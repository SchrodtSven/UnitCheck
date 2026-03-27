/**
 *  Foundation class for unit checks
 * 
 * @author Sven Schrodt<sven@schrodt.club>
 * @link https://github.com/SchrodtSven/UnitCheck
 * @package UnitCheck
 * @version 0.1
 * @since 2026-03-27
 */

namespace UnitCheck\Shell;

class Cli
{

    /**
     * Colour for foreground
     *
     * @var string
     */
    private fgColour;

    /**
     * Colour for background
     *
     * @var string
     */
    private gbColour;

    /**
     * Constructor function
     */
    public function __construct()
    {
        // Setting up shell colours
        let this->fgColour = [
            "black" : "0;30",
            "dark_gray" : "1;30",
            "blue" : "0;34",
            "light_blue" : "1;34",
            "green" : "0;32",
            "light_green" : "1;32",
            "cyan" : "0;36",
            "light_cyan" : "1;36",
            "red" : "0;31",
            "light_red" : "1;31",
            "purple" : "0;35",
            "light_purple" : "1;35",
            "brown" : "0;33",
            "yellow" : "1;33",
            "light_gray" : "0;37",
            "white" : "1;37"
        ];

        let this->gbColour = [
            "black" : "40",
            "red" : "41",
            "green" : "42",
            "yellow" : "43",
            "blue" : "44",
            "magenta" : "45",
            "cyan" : "46",
            "light_gray" : "47"
        ];
    }

    /**
     * Returning a coloured string
     *
     * @param string string
     * @param string fg
     * @param string bg
     * @return string
     */
    public function getColouredString(string str, string fg = null, string bg = null) -> string
    {
        string cString = "";

        // Checking, if the given fg colour is found
        if (isset(this->fgColour[fg])) {
            let cString .= "\033[" . this->fgColour[fg] . "m";
        }
        // Check if given background colour found
        if (isset(this->gbColour[bg])) {
            let cString .= "\033[" . this->gbColour[bg] . "m";
        }

        // Add string and end colouring
        let cString .= str . "\033[0m";

        return cString;
    }

    /**
     * Returning foreground colour names
     *
     * @return array
     */
    public function getFgColours() -> array
    {
        return array_keys(this->fgColour);
    }

    /**
     * Returning background colour names
     *
     * @return array
     */
    public function getBgColours() -> array
    {
        return array_keys(this->gbColour);
    }
}