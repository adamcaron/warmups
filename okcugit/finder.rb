  class Finder
    def initialize(repo_url)
      parsed = repo_url.split("/")
      @repo_user = parsed[0]
      @repo_name = parsed[1]
    end

    def print
      `git clone https://github.com/#{@repo_user}/#{@repo_name}`
      Dir.chdir(@repo_name) do
        puts `git log --pretty=format:'<%an> %ae' | sort -u`
      end
      `rm -rf #{@repo_name}`
    end
  end
end