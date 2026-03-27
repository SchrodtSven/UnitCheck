/**
 *  Foundation class for unit checks
 * 
 * @author Sven Schrodt<sven@schrodt.club>
 * @link https://github.com/SchrodtSven/UnitCheck
 * @package UnitCheck
 * @version 0.1
 * @since 2026-03-27
 */

namespace UnitCheck\Entity;

class Cfg
{

    private config;
    private configFile;

    public function __construct(string configFile = "unitcheck.ini")
    {
        let this->configFile = \realpath(this->configFile);
        int code;
        if (!\file_exists(configFile)) {
            let code = 404;
            throw new \Exception(configFile, code);
        }
        this->_init();

    }

    /**
     * Setting up configuration from ini config file
     */
    public function _init()
    {

        let this->config = \parse_ini_file(this->configFile, true, INI_SCANNER_TYPED);

        
    }
}