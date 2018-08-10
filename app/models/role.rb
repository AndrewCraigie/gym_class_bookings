
require_relative( '../db/sql_runner' )


class Role

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  # --- Class methods

  def delete_all()
    sql = "DELETE FROM roles"
    SqlRunner.run(sql)
  end

  def all()
    sql = "SELECT * FROM roles"
    results = SqlRunner.run(sql)
    return results.map { |role| Role.new(role)}
  end

  def find_by_id(id)
    sql = "SELECT * FROM roles
          WHERE id = $1"
    value = [id]
    result = SqlRunner.run(sql, value).first
    return Role.new(result)
  end

  # --- Instance methods

  def save()
    sql = "INSERT INTO roles
          (name)
          VALUES
          ($1)
          RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql).first()
    @id = result['id'].to_i()
  end

  def update()
      sql = "UPDATE roles
      SET
      (name)
      =
      ($1)
      WHERE id = $2"
      values = [@name, @id]
      SqlRunner.run(sql, values)
    end

  def delete()
    sql = "DELETE FROM roles
          WHERE id = $1"
    value = [@id]
    SqlRunner.run(sql, value)
  end


end
