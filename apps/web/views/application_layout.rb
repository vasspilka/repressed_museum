module Web
  module Views
    class ApplicationLayout
      include Web::View
      include Web::Layout

      def title
        locale["title"]
      end

      def index
        locale["nav"]["index"]
      end

      def about
        locale["nav"]["about"]
      end

      def archive
        locale["nav"]["archive"]
      end

      def repress
        locale["nav"]["repress"]
      end

    end
  end
end
