module ApplicationHelper
  def component(name, *, **, &)
    component = name.concat("Component").constantize
    render(component.new(*, **), &)
  end
end
