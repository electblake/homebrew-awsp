class Awsp < Formula
    desc "Allows for easy switching between AWS profiles"
    homepage "https://github.com/electblake/go-awsp"
    # url "https://github.com/kellyp/lowprofile/archive/v0.4.0.tar.gz"
    # version "0.4.0"
    # sha256 "49b65bd26f2def593063bec5bea186ddb1cc46b80c7593abb5707720fe3488d2"
  
    # depends_on "jq"
    # depends_on "grep"
  
    def install
      bin.install Dir["bin/_awsp"]
      bin.install Dir["bin/_awsp_prompt"]
    end
  
    def caveats; <<-EOS
      Add the following to your bash_profile or zshrc to complete the install:
  
        alias awsp=". #{HOMEBREW_PREFIX}/bin/_awsp"
  
      and source the file to pick up the change.
  
      that's it awsp with take it from there!
      You can now switch AWS profiles simply by typing
  
        awsp
  
      EOS
    end
  end