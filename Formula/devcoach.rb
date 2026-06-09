class Devcoach < Formula
  include Language::Python::Virtualenv

  desc "Progressive technical coaching MCP server for Claude Code and Claude Desktop"
  homepage "https://github.com/UltimaPhoenix/dev-coach"
  url "https://files.pythonhosted.org/packages/36/fe/c50e45ba72830e81e837dee8482cd00144f4686835d78dd529a46b1b12e7/devcoach-0.3.29.tar.gz"
  sha256 "feeea16aae766ce55fc0f666c946f860a0da1e09c1fb6b949c170e0f42c2c02e"
  version "0.3.29"
  license "Apache-2.0"

  depends_on "python@3.13"

  resource "aiofile" do
    url "https://files.pythonhosted.org/packages/50/25/da1f0b4dd970e52bf5a36c204c107e11a0c6d3ed195eba0bfbc664c312b2/aiofile-3.9.0-py3-none-any.whl"
    sha256 "ce2f6c1571538cbdfa0143b04e16b208ecb0e9cb4148e528af8a640ed51cc8aa"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "authlib" do
    url "https://files.pythonhosted.org/packages/e0/82/730650ee5e5b598b7bfdc291b784bc2f6fe02a5671695485403365101088/authlib-1.7.1-py2.py3-none-any.whl"
    sha256 "8470f4aa6b5590ac41bd81d6e6ee12448ce36a0da0af19bbed69fb53fb4e8ad9"
  end

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/71/cc/18245721fa7747065ab478316c7fea7c74777d07f37ae60db2e84f8172e8/beartype-0.22.9-py3-none-any.whl"
    sha256 "d16c9bbc61ea14637596c5f6fbff2ee99cbe3573e46a716401734ef50c3060c2"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/06/f3/39cf3367b8107baa44f861dc802cbf16263c945b62d8265d36034fc07bea/cachetools-7.0.5-py3-none-any.whl"
    sha256 "46bc8ebefbe485407621d0a4264b23c080cedd913921bad7ac3ed2f26c183114"
  end

  resource "caio" do
    url "https://files.pythonhosted.org/packages/86/93/1f76c8d1bafe3b0614e06b2195784a3765bbf7b0a067661af9e2dd47fc33/caio-0.9.25-py3-none-any.whl"
    sha256 "06c0bb02d6b929119b1cfbe1ca403c768b2013a369e2db46bfa2a5761cf82e40"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  on_arm do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/4a/d2/a6c0296814556c68ee32009d9c2ad4f85f2707cdecfd7727951ec228005d/cffi-2.0.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "45d5e886156860dc35862657e1494b9bae8dfa63bf56796f2fb56e1679fc0bca"
    end
  end

  on_intel do
    resource "cffi" do
      url "https://files.pythonhosted.org/packages/4b/8d/a0a47a0c9e413a658623d014e91e74a50cdd2c423f7ccfd44086ef767f90/cffi-2.0.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "00bdf7acc5f795150faa6957054fbbca2439db2f775ce831222b66f192f03beb"
    end
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/e4/20/71885d8b97d4f3dde17b1fdb92dbd4908b00541c5a3379787137285f602e/click-8.3.2-py3-none-any.whl"
    sha256 "1924d2c27c5653561cd2cae4548d1406039cb79b858b747cfea24924bbc1616d"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d1/d6/3965ed04c63042e047cb6a3e6ed1a63a35087b6a609aa3a15ed8ac56c221/colorama-0.4.6-py2.py3-none-any.whl"
    sha256 "4f1d9991f5acc0ca119f9d443620b77f9d6b33703e51011c16baf57afb285fc6"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/0b/5d/4a8f770695d73be252331e60e526291e3df0c9b27556a90a6b47bccca4c2/cryptography-46.0.7-cp311-abi3-macosx_10_9_universal2.whl"
    sha256 "ea42cbe97209df307fdc3b155f1b6fa2577c0defa8f1f7d3be7d31d189108ad4"
  end

  resource "cyclopts" do
    url "https://files.pythonhosted.org/packages/b4/bd/05055d8360cef0757d79367157f3b15c0a0715e81e08f86a04018ec045f0/cyclopts-4.10.2-py3-none-any.whl"
    sha256 "a1f2d6f8f7afac9456b48f75a40b36658778ddc9c6d406b520d017ae32c990fe"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/ba/5a/18ad964b0086c6e62e2e7500f7edc89e3faa45033c71c1893d34eed2b2de/dnspython-2.8.0-py3-none-any.whl"
    sha256 "01d9bbc4a2d76bf0db7c1f729812ded6d912bd318d3b1cf81d30c0f845dbf3af"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/a7/5f/ed01f9a3cdffbd5a008556fc7b2a08ddb1cc6ace7effa7340604b1d16699/docstring_parser-0.18.0-py3-none-any.whl"
    sha256 "b3fcbed555c47d8479be0796ef7e19c2670d428d72e96da63f3a40122860374b"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/02/10/5da547df7a391dcde17f59520a231527b8571e6f46fc8efb02ccb370ab12/docutils-0.22.4-py3-none-any.whl"
    sha256 "d0013f540772d1420576855455d050a2180186c91c15779301ac2ccb3eeb68de"
  end

  resource "email-validator" do
    url "https://files.pythonhosted.org/packages/de/15/545e2b6cf2e3be84bc1ed85613edd75b8aea69807a71c26f4ca6a9258e82/email_validator-2.3.0-py3-none-any.whl"
    sha256 "80f13f623413e6b197ae73bb10bf4eb0908faf509ad8362c5edeb0be7fd450b4"
  end

  resource "exceptiongroup" do
    url "https://files.pythonhosted.org/packages/8a/0e/97c33bf5009bdbac74fd2beace167cab3f978feb69cc36f1ef79360d6c4e/exceptiongroup-1.3.1-py3-none-any.whl"
    sha256 "a7a39a3bd276781e98394987d3a5701d0c4edffb633bb7a5144577f82c773598"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/e0/82/45359b62a067409bd929ae8a56b8ed13e5a8c8a61194b3c236920999ab83/fastapi-0.136.3-py3-none-any.whl"
    sha256 "3d2a69bdf04b7e9f3afa292c3bc7a98816bbfafa10bc9b45f3f3700d2f761620"
  end

  resource "fastmcp" do
    url "https://files.pythonhosted.org/packages/58/4d/8b1ba42251160e11ca34686344572121432c23a082d56ef6bbdec5888fc1/fastmcp-3.4.2-py3-none-any.whl"
    sha256 "c87a62b029f0c5400ada85f683629345d2466c39169f0cb853e487b2f7308c08"
  end

  resource "fastmcp-slim" do
    url "https://files.pythonhosted.org/packages/f7/58/22afebf18df7260b09148199cbeb90cdcc4b3a4e1b5d7460e3591c3a7add/fastmcp_slim-3.4.2-py3-none-any.whl"
    sha256 "bdc72492212681ca502755fa8acc0457f559295da1fc3dfc0599adc1c04b82f3"
  end

  resource "griffelib" do
    url "https://files.pythonhosted.org/packages/11/8c/c9138d881c79aa0ea9ed83cbd58d5ca75624378b38cee225dcf5c42cc91f/griffelib-2.0.2-py3-none-any.whl"
    sha256 "925c857658fb1ba40c0772c37acbc2ab650bd794d9c1b9726922e36ea4117ea1"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/d2/fd/6668e5aec43ab844de6fc74927e155a3b37bf40d7c3790e49fc0406b6578/httpx_sse-0.4.3-py3-none-any.whl"
    sha256 "0ac1c9fe3c0afad2e0ebb25a934a59f4c7823b60792691f779fad2c5568830fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/d2/23/408243171aa9aaba178d3e2559159c24c1171a641aa83b67bdd3394ead8e/idna-3.15-py3-none-any.whl"
    sha256 "048adeaf8c2d788c40fee287673ccaa74c24ffd8dcf09ffa555a2fbb59f10ac8"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/fa/5e/f8e9a1d23b9c20a551a8a02ea3637b4642e22c2626e3a13a9a29cdea99eb/importlib_metadata-8.7.1-py3-none-any.whl"
    sha256 "5a1f80bf1daa489495071efbb095d75a634cf28a8bc299581244063b53176151"
  end

  resource "jaraco-classes" do
    url "https://files.pythonhosted.org/packages/7f/66/b15ce62552d84bbfcec9a4873ab79d993a1dd4edb922cbfccae192bd5b5f/jaraco.classes-3.4.0-py3-none-any.whl"
    sha256 "f662826b6bed8cace05e7ff873ce0f9283b5c924470fe664fff1c2f00f581790"
  end

  resource "jaraco-context" do
    url "https://files.pythonhosted.org/packages/f2/58/bc8954bda5fcda97bd7c19be11b85f91973d67a706ed4a3aec33e7de22db/jaraco_context-6.1.2-py3-none-any.whl"
    sha256 "bf8150b79a2d5d91ae48629d8b427a8f7ba0e1097dd6202a9059f29a36379535"
  end

  resource "jaraco-functools" do
    url "https://files.pythonhosted.org/packages/fd/c4/813bb09f0985cb21e959f21f2464169eca882656849adf727ac7bb7e1767/jaraco_functools-4.4.0-py3-none-any.whl"
    sha256 "9eec1e36f45c818d9bf307c8948eb03b2b56cd44087b3cdc989abca1f20b9176"
  end

  resource "jeepney" do
    url "https://files.pythonhosted.org/packages/b2/a3/e137168c9c44d18eff0376253da9f1e9234d0239e0ee230d2fee6cea8e55/jeepney-0.9.0-py3-none-any.whl"
    sha256 "97e5714520c16fc0a45695e5365a2e11b81ea79bba796e26f9f1d178cb182683"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "joserfc" do
    url "https://files.pythonhosted.org/packages/b6/f7/210b27752e972edb36d239315b08d3eb6b14824cc4a590da2337d195260b/joserfc-1.6.4-py3-none-any.whl"
    sha256 "3e4a22b509b41908989237a045e25c8308d5fd47ab96bdae2dd8057c6451003a"
  end

  resource "jsonref" do
    url "https://files.pythonhosted.org/packages/0c/ec/e1db9922bceb168197a558a2b8c03a7963f1afe93517ddd3cf99f202f996/jsonref-1.1.0-py3-none-any.whl"
    sha256 "590dc7773df6c21cbf948b5dac07a72a251db28b0238ceecce0a2abfa8ec30a9"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-path" do
    url "https://files.pythonhosted.org/packages/04/d5/4e96c44f6c1ea3d812cf5391d81a4f5abaa540abf8d04ecd7f66e0ed11df/jsonschema_path-0.4.5-py3-none-any.whl"
    sha256 "7d77a2c3f3ec569a40efe5c5f942c44c1af2a6f96fe0866794c9ef5b8f87fd65"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/81/db/e655086b7f3a705df045bf0933bdd9c2f79bb3c97bfef1384598bb79a217/keyring-25.7.0-py3-none-any.whl"
    sha256 "be4a0b195f149690c166e850609a477c532ddbfbaed96a404d4e43f8d5e2689f"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/94/54/e7d793b573f298e1c9013b8c4dade17d481164aa517d1d7148619c2cedbf/markdown_it_py-4.0.0-py3-none-any.whl"
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  on_arm do
    resource "markupsafe" do
      url "https://files.pythonhosted.org/packages/9c/d9/5f7756922cdd676869eca1c4e3c0cd0df60ed30199ffd775e319089cb3ed/markupsafe-3.0.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "116bb52f642a37c115f517494ea5feb03889e04df47eeff5b130b1808ce7c219"
    end
  end

  on_intel do
    resource "markupsafe" do
      url "https://files.pythonhosted.org/packages/38/2f/907b9c7bbba283e68f20259574b13d005c121a0fa4c175f9bed27c4597ff/markupsafe-3.0.3-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "e1cf1972137e83c5d4c136c43ced9ac51d0e124706ee1c8aa8532c1287fa8795"
    end
  end

  resource "mcp" do
    url "https://files.pythonhosted.org/packages/9c/46/f6b4ad632c67ef35209a66127e4bddc95759649dd595f71f13fba11bdf9a/mcp-1.27.0-py3-none-any.whl"
    sha256 "5ce1fa81614958e267b21fb2aa34e0aea8e2c6ede60d52aba45fd47246b4d741"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/cb/98/6af411189d9413534c3eb691182bff1f5c6d44ed2f93f2edfe52a1bbceb8/more_itertools-11.0.2-py3-none-any.whl"
    sha256 "6e35b35f818b01f691643c6c611bc0902f2e92b46c18fffa77ae1e7c46e912e4"
  end

  resource "openapi-pydantic" do
    url "https://files.pythonhosted.org/packages/12/cf/03675d8bd8ecbf4445504d8071adab19f5f993676795708e36402ab38263/openapi_pydantic-0.5.1-py3-none-any.whl"
    sha256 "a3a09ef4586f5bd760a8df7f43028b60cafb6d9f61de2acba9574766255ab146"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/58/ee/99ab786653b3bda9c37ade7e24a7b607a1b1f696063172768417539d876d/opentelemetry_api-1.41.0-py3-none-any.whl"
    sha256 "0e77c806e6a89c9e4f8d372034622f3e1418a11bdbe1c80a50b3d3397ad0fa4f"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7a/c2/920ef838e2f0028c8262f16101ec09ebd5969864e5a64c4c05fad0617c56/packaging-26.1-py3-none-any.whl"
    sha256 "5d9c0669c6285e491e0ced2eee587eaf67b670d94a19e94e3984a481aba6802f"
  end

  resource "pathable" do
    url "https://files.pythonhosted.org/packages/52/96/5a770e5c461462575474468e5af931cff9de036e7c2b4fea23c1c58d2cbe/pathable-0.5.0-py3-none-any.whl"
    sha256 "646e3d09491a6351a0c82632a09c02cdf70a252e73196b36d8a15ba0a114f0a6"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/75/a6/a0a304dc33b49145b21f4808d763822111e67d1c3a32b524a1baf947b6e1/platformdirs-4.9.6-py3-none-any.whl"
    sha256 "e61adb1d5e5cb3441b4b7710bea7e4c12250ca49439228cc1021c00dcfac0917"
  end

  resource "py-key-value-aio" do
    url "https://files.pythonhosted.org/packages/32/69/f1b537ee70b7def42d63124a539ed3026a11a3ffc3086947a1ca6e861868/py_key_value_aio-0.4.4-py3-none-any.whl"
    sha256 "18e17564ecae61b987f909fc2cd41ee2012c84b4b1dcb8c055cf8b4bc1bf3f5d"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  on_arm do
    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
    end
  end

  on_intel do
    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/51/a2/5d30b469c5267a17b39dec53208222f76a8d351dfac4af661888c5aee77d/pydantic_core-2.46.4-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "5d5902252db0d3cedf8d4a1bc68f70eeb430f7e4c7104c8c476753519b423008"
    end
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/00/4b/ccc026168948fec4f7555b9164c724cf4125eac006e176541483d2c959be/pydantic_settings-2.13.1-py3-none-any.whl"
    sha256 "d56fd801823dbeae7f0975e1f8c8e25c258eb75d278ea7abb5d9cebb01b56237"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e5/7a/8dd906bd22e79e47397a61742927f6747fe93242ef86645ee9092e610244/pyjwt-2.12.1-py3-none-any.whl"
    sha256 "28ca37c070cad8ba8cd9790cd940535d40274d22f80ab87f3ac6a713e6e8454c"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/df/80/fc9d01d5ed37ba4c42ca2b55b4339ae6e200b456be3a1aaddf4a9fa99b8c/pyperclip-1.11.0-py3-none-any.whl"
    sha256 "299403e9ff44581cb9ba2ffeed69c7aa96a008622ad0c46cb575ca75b5b84273"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/99/78/4126abcbdbd3c559d43e0db7f7b9173fc6befe45d39a2856cc0b8ec2a5a6/python_multipart-0.0.27-py3-none-any.whl"
    sha256 "6fccfad17a27334bd0193681b369f476eda3409f17381a2d65aa7df3f7275645"
  end

  resource "pywin32-ctypes" do
    url "https://files.pythonhosted.org/packages/de/3d/8161f7711c017e01ac9f008dfddd9410dff3674334c233bde66e7ba65bbf/pywin32_ctypes-0.2.3-py3-none-any.whl"
    sha256 "8a1513379d709975552d202d942d9837758905c8d01eb82b8bcc30918929e7b8"
  end

  on_arm do
    resource "pyyaml" do
      url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
    end
  end

  on_intel do
    resource "pyyaml" do
      url "https://files.pythonhosted.org/packages/d1/11/0fd08f8192109f7169db964b5707a2f1e8b745d4e239b784a5a1dd80d1db/pyyaml-6.0.3-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "8da9669d359f02c0b91ccc01cac4a67f16afec0dac22c2ad09f46bee0697eba8"
    end
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "rich-rst" do
    url "https://files.pythonhosted.org/packages/13/2f/b4530fbf948867702d0a3f27de4a6aab1d156f406d72852ab902c4d04de9/rich_rst-1.3.2-py3-none-any.whl"
    sha256 "a99b4907cbe118cf9d18b0b44de272efa61f15117c61e39ebdc431baf5df722a"
  end

  on_arm do
    resource "rpds-py" do
      url "https://files.pythonhosted.org/packages/fd/32/55fb50ae104061dbc564ef15cc43c013dc4a9f4527a1f4d99baddf56fe5f/rpds_py-0.30.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "e7536cd91353c5273434b4e003cbda89034d67e7710eab8761fd918ec6c69cf8"
    end
  end

  on_intel do
    resource "rpds-py" do
      url "https://files.pythonhosted.org/packages/ed/dc/d61221eb88ff410de3c49143407f6f3147acf2538c86f2ab7ce65ae7d5f9/rpds_py-0.30.0-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "f83424d738204d9770830d35290ff3273fbb02b41f919870479fab14b9d303b2"
    end
  end

  resource "secretstorage" do
    url "https://files.pythonhosted.org/packages/b7/46/f5af3402b579fd5e11573ce652019a67074317e18c1935cc0b4ba9b35552/secretstorage-3.5.0-py3-none-any.whl"
    sha256 "0ce65888c0725fcb2c5bc0fdb8e5438eece02c523557ea40ce0703c266248137"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/f8/7f/3de5402f39890ac5660b86bcf5c03f9d855dad5c4ed764866d7b592b46fd/sse_starlette-3.3.4-py3-none-any.whl"
    sha256 "84bb06e58939a8b38d8341f1bc9792f06c2b53f48c608dd207582b664fc8f3c1"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/1c/54/196d0c1db10af76baa4f64894448505d60d3cdf70ef92cbb35f46a4e4c71/starlette-1.2.1-py3-none-any.whl"
    sha256 "4de0082d08c8f6764a85a54cf1120d6939507a19905c7768acad2a9f875d2b89"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "uncalled-for" do
    url "https://files.pythonhosted.org/packages/11/e1/7ec67882ad8fc9f86384bef6421fa252c9cbe5744f8df6ce77afc9eca1f5/uncalled_for-0.3.1-py3-none-any.whl"
    sha256 "074cdc92da8356278f93d0ded6f2a66dd883dbecaf9bc89437646ee2289cc200"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/88/fa/e1388bbcf24ef3274f45c0c1c7b501fd14971037c1b6ee23610553307497/uvicorn-0.49.0-py3-none-any.whl"
    sha256 "ba3d14c3ee7e41c6c654c46c9eb489d33213cdd30aa1696eab1374337c13f68f"
  end

  on_arm do
    resource "watchfiles" do
      url "https://files.pythonhosted.org/packages/2b/f9/f07a295cde762644aa4c4bb0f88921d2d141af45e735b965fb2e87858328/watchfiles-1.1.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "5f3bde70f157f84ece3765b42b4a52c6ac1a50334903c6eaf765362f6ccca88a"
    end
  end

  on_intel do
    resource "watchfiles" do
      url "https://files.pythonhosted.org/packages/bb/f4/f750b29225fe77139f7ae5de89d4949f5a99f934c65a1f1c0b248f26f747/watchfiles-1.1.1-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "130e4876309e8686a5e37dba7d5e9bc77e6ed908266996ca26572437a5271e18"
    end
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/6f/28/258ebab549c2bf3e64d2b0217b973467394a9cea8c42f70418ca2c5d0d2e/websockets-16.0-py3-none-any.whl"
    sha256 "1637db62fad1dc833276dded54215f2c7fa46912301a24bd94d45d46a011ceec"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/08/8a/0861bec20485572fbddf3dfba2910e38fe249796cb73ecdeb74e07eeb8d3/zipp-3.23.1-py3-none-any.whl"
    sha256 "0b3596c50a5c700c9cb40ba8d86d9f2cc4807e9bedb06bcdf7fac85633e444dc"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"devcoach", "--help"
  end
end
