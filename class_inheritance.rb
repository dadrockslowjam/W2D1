class Employee
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    private
    def bonus(multiplier)
        bonus = (employee salary) * multiplier
    end
end

class Manager < Employee
    def initialize(employees)
        super(name, title, salary, boss)
        @employees = employees
    end

    private
    def bonus(multiplier)
    bonus = (total salary of all sub-employees) * multiplier
    end
end