import org.kohsuke.github.GitHub;

import java.io.IOException;

public class test1 {


    interface GithubService {
        GitHub connect() throws IOException;
    }

    class DefaultGitHubService implements GithubService {
        @Override
        public GitHub connect() {
            return null;
        }
    }
    private GithubService githubService;
    public test1(GithubService githubService){
        this.githubService = githubService;
    }
    public int getPoint(String repositoryname) throws IOException {
        GitHub gitHub = githubService.connect();
        return 0;
    }
}