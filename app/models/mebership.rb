
require_relative( '../db/sql_runner' )


class Membership

  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']

  end

  # --- Class methods

  def delete_all()
    sql = "DELETE FROM memberships"
    SqlRunner.run(sql)
  end

  def all()
    sql = "SELECT * FROM memberships"
    results = SqlRunner.run(sql)
    return results.map { |membership| Membership.new(membership)}
  end

  def find_by_id(id)
    sql = "SELECT * FROM memberships
          WHERE id = $1"
    value = [id]
    result = SqlRunner.run(sql, value).first
    return Membership.new(result)
  end

  # --- Instance methods

  def save()
    sql = "INSERT INTO memberships
          ()
          VALUES
          ()
          RETURNING id"
    values = []
    result = SqlRunner.run(sql).first()
    @id = result['id'].to_i()
  end

  def update()
      sql = "UPDATE memberships
      SET
      (

      ) =
      (

      )
      WHERE id = $"
      values = [, @id]
      SqlRunner.run(sql, values)
    end

  def delete()
    sql = "DELETE FROM memberships
          WHERE id = $1"
    value = [@id]
    SqlRunner.run(sql, value)
  end


end