class Pry
  # @api private
  # @since ?.?.?
  module SystemCommandHandler
    class << self
      def default(output, command, _pry_instance)
        return if Kernel.system(command)

        output.puts(
          "Error: there was a problem executing system command: #{command}"
        )
      end
    end
  end
end
