class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name 
        @title = title
        @salary = salary
        @boss = boss
    end



    def bonus(multiplyer)
        bonus = salary * multiplyer
    end

end


class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def add_employee(*employee)
        employee.each { |emp| @employees << emp }
    end

    def bonus(multiplyer)
        multiplyer * self.sum_salary    
    end

    def sum_salary
        return 0 if @employees.empty?

        count = 0
        @employees.each do |emp|
            count += emp.salary
            if emp.is_a?(Manager)
                count += emp.sum_salary
            end
        end
        return count
    end
end

ned = Manager.new("ned", "founder", 1000000, nil)
darren = Manager.new("darren", "manager", 78000, "ned")
shawna = Employee.new("shawna", "employee", 12000, "darren")
david = Employee.new("david", "employee", 10000, "darren")

darren.add_employee(shawna, david)
ned.add_employee(darren)

p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
p shawna.bonus(2)
