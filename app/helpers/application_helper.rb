module ApplicationHelper
    def status_humanize(status)
        return "Ativo" if status == 1
        return "Inativo" if status == 0
    end
end
