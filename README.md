# DelphiConsole
The Console class from C# ported to Delphi

<pre>
/*=============================================================================
**
** Class: Console
**
**
** Purpose: This class provides access to the standard input, standard output
**          and standard error streams.
**
**
=============================================================================*/
</pre>


<h1>Properties</h1>


<table style="width:100%">
        <TR>
            <TD><h2>Name</h2></TD>
            <TD><h2>Description</h2></TD>
        </TR>

<TR>
            <TD>BackgroundColor	</TD>
            <TD>Gets or sets the background color of the console.</TD>
        </TR>
        <TR>
            <TD>BufferHeight	</TD>
            <TD>Gets or sets the height of the buffer area.</TD>
        </TR>
        <TR>
            <TD>BufferWidth	</TD>
            <TD>Gets or sets the width of the buffer area.</TD>
        </TR>
        <TR>
            <TD>CapsLock	</TD>
            <TD>Gets a value indicating whether the CAPS LOCK keyboard toggle is turned on or turned off.</TD>
        </TR>
        <TR>
            <TD>CursorLeft	</TD>
            <TD>Gets or sets the column position of the cursor within the buffer area.</TD>
        </TR>
        <TR>
            <TD>CursorSize	</TD>
            <TD>Gets or sets the height of the cursor within a character cell.</TD>
        </TR>
        <TR>
            <TD>CursorTop	</TD>
            <TD>Gets or sets the row position of the cursor within the buffer area.</TD>
        </TR>
        <TR>
            <TD>CursorVisible	</TD>
            <TD>Gets or sets a value indicating whether the cursor is visible.</TD>
        </TR>
        <TR>
            <TD>Error	</TD>
            <TD>Gets the standard error output stream.</TD>
        </TR>
        <TR>
            <TD>ForegroundColor	</TD>
            <TD>Gets or sets the foreground color of the console.</TD>
        </TR>
        <TR>
            <TD>In	</TD>
            <TD>Gets the standard input stream.</TD>
        </TR>
        <TR>
            <TD>InputEncoding	</TD>
            <TD>Gets or sets the encoding the console uses to read input.</TD>
        </TR>
        <TR>
            <TD>IsErrorRedirected	</TD>
            <TD>Gets a value that indicates whether the error output stream has been redirected from the standard error stream.</TD>
        </TR>
        <TR>
            <TD>IsInputRedirected	</TD>
            <TD>Gets a value that indicates whether input has been redirected from the standard input stream.</TD>
        </TR>
        <TR>
            <TD>IsOutputRedirected	</TD>
            <TD>Gets a value that indicates whether output has been redirected from the standard output stream.</TD>
        </TR>
        <TR>
            <TD>KeyAvailable	</TD>
            <TD>Gets a value indicating whether a key press is available in the input stream.</TD>
        </TR>
        <TR>
            <TD>LargestWindowHeight	</TD>
            <TD>Gets the largest possible number of console window rows, based on the current font and screen resolution.</TD>
        </TR>
        <TR>
            <TD>LargestWindowWidth	</TD>
            <TD>Gets the largest possible number of console window columns, based on the current font and screen resolution.</TD>
        </TR>
        <TR>
            <TD>NumberLock	</TD>
            <TD>Gets a value indicating whether the NUM LOCK keyboard toggle is turned on or turned off.</TD>
        </TR>
        <TR>
            <TD>Out	</TD>
            <TD>Gets the standard output stream.</TD>
        </TR>
        <TR>
            <TD>OutputEncoding	</TD>
            <TD>Gets or sets the encoding the console uses to write output.</TD>
        </TR>
        <TR>
            <TD>Title	</TD>
            <TD>Gets or sets the title to display in the console title bar.</TD>
        </TR>
        <TR>
            <TD>TreatControlCAsInput	</TD>
            <TD>Gets or sets a value indicating whether the combination of the Control modifier key and C console key (Ctrl+C) is treated as ordinary input or as an interruption that is handled by the operating system.</TD>
        </TR>
        <TR>
            <TD>WindowHeight	</TD>
            <TD>Gets or sets the height of the console window area.</TD>
        </TR>
        <TR>
            <TD>WindowLeft	</TD>
            <TD>Gets or sets the leftmost position of the console window area relative to the screen buffer.</TD>
        </TR>
        <TR>
            <TD>WindowTop	</TD>
            <TD>Gets or sets the top position of the console window area relative to the screen buffer.</TD>
        </TR>
        <TR>
            <TD>WindowWidth	</TD>
            <TD>Gets or sets the width of the console window.</TD>
        </TR>
</table>

<H1>Methods</H1>  

<table style="width:100%">
        <TR>
            <TD><h2>Name</h2></TD>
            <TD><h2>Description</h2></TD>
        </TR>
  
  <TR>
            <TD>Beep()	</TD>
            <TD>Plays the sound of a beep through the console speaker.</TD>
        </TR>
        <TR>
            <TD>Beep(Int32, Int32)	</TD>
            <TD>Plays the sound of a beep of a specified frequency and duration through the console speaker.</TD>
        </TR>
        <TR>
            <TD>Clear()	</TD>
            <TD>Clears the console buffer and corresponding console window of display information.</TD>
        </TR>
        <TR>
            <TD>MoveBufferArea(Int32, Int32, Int32, Int32, Int32, Int32)	</TD>
            <TD>Copies a specified source area of the screen buffer to a specified destination area.</TD>
        </TR>
        <TR>
            <TD>MoveBufferArea(Int32, Int32, Int32, Int32, Int32, Int32, Char, ConsoleColor, ConsoleColor)	</TD>
            <TD>Copies a specified source area of the screen buffer to a specified destination area.</TD>
        </TR>
        <TR>
            <TD>OpenStandardError()	</TD>
            <TD>Acquires the standard error stream.</TD>
        </TR>
        <TR>
            <TD>OpenStandardError(Int32)	</TD>
            <TD>Acquires the standard error stream, which is set to a specified buffer size.</TD>
        </TR>
        <TR>
            <TD>OpenStandardInput()	</TD>
            <TD>Acquires the standard input stream.</TD>
        </TR>
        <TR>
            <TD>OpenStandardInput(Int32)	</TD>
            <TD>Acquires the standard input stream, which is set to a specified buffer size.</TD>
        </TR>
        <TR>
            <TD>OpenStandardOutput()	</TD>
            <TD>Acquires the standard output stream.</TD>
        </TR>
        <TR>
            <TD>OpenStandardOutput(Int32)	</TD>
            <TD>Acquires the standard output stream, which is set to a specified buffer size.</TD>
        </TR>
        <TR>
            <TD>Read()	</TD>
            <TD>Reads the next character from the standard input stream.</TD>
        </TR>
        <TR>
            <TD>ReadKey()	</TD>
            <TD>Obtains the next character or function key pressed by the user. The pressed key is displayed in the console window.</TD>
        </TR>
        <TR>
            <TD>ReadKey(Boolean)	</TD>
            <TD>Obtains the next character or function key pressed by the user. The pressed key is optionally displayed in the console window.</TD>
        </TR>
        <TR>
            <TD>ReadLine()	</TD>
            <TD>Reads the next line of characters from the standard input stream.</TD>
        </TR>
        <TR>
            <TD>ResetColor()	</TD>
            <TD>Sets the foreground and background console colors to their defaults.</TD>
        </TR>
        <TR>
            <TD>SetBufferSize(Int32, Int32)	</TD>
            <TD>Sets the height and width of the screen buffer area to the specified values.</TD>
        </TR>
        <TR>
            <TD>SetCursorPosition(Int32, Int32)	</TD>
            <TD>Sets the position of the cursor.</TD>
        </TR>
        <TR>
            <TD>SetError(TextWriter)	</TD>
            <TD>Sets the Error property to the specified TextWriter object.</TD>
        </TR>
        <TR>
            <TD>SetIn(TextReader)	</TD>
            <TD>Sets the In property to the specified TextReader object.</TD>
        </TR>
        <TR>
            <TD>SetOut(TextWriter)	</TD>
            <TD>Sets the Out property to the specified TextWriter object.</TD>
        </TR>
        <TR>
            <TD>SetWindowPosition(Int32, Int32)	</TD>
            <TD>Sets the position of the console window relative to the screen buffer.</TD>
        </TR>
        <TR>
            <TD>SetWindowSize(Int32, Int32)	</TD>
            <TD>Sets the height and width of the console window to the specified values.</TD>
        </TR>
        <TR>
            <TD>Write(Boolean)	</TD>
            <TD>Writes the text representation of the specified Boolean value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Char)	</TD>
            <TD>Writes the specified Unicode character value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Char[])	</TD>
            <TD>Writes the specified array of Unicode characters to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Char[], Int32, Int32)	</TD>
            <TD>Writes the specified subarray of Unicode characters to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Decimal)	</TD>
            <TD>Writes the text representation of the specified Decimal value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Double)	</TD>
            <TD>Writes the text representation of the specified double-precision floating-point value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Int32)	</TD>
            <TD>Writes the text representation of the specified 32-bit signed integer value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Int64)	</TD>
            <TD>Writes the text representation of the specified 64-bit signed integer value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Object)	</TD>
            <TD>Writes the text representation of the specified object to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(Single)	</TD>
            <TD>Writes the text representation of the specified single-precision floating-point value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(String)	</TD>
            <TD>Writes the specified string value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(String, Object)	</TD>
            <TD>Writes the text representation of the specified object to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>Write(String, Object, Object)	</TD>
            <TD>Writes the text representation of the specified objects to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>Write(String, Object, Object, Object)	</TD>
            <TD>Writes the text representation of the specified objects to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>Write(String, Object, Object, Object, Object)	</TD>
            <TD>Writes the text representation of the specified objects and variable-length parameter list to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>Write(String, Object[])	</TD>
            <TD>Writes the text representation of the specified array of objects to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>Write(UInt32)	</TD>
            <TD>Writes the text representation of the specified 32-bit unsigned integer value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>Write(UInt64)	</TD>
            <TD>Writes the text representation of the specified 64-bit unsigned integer value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine()	</TD>
            <TD>Writes the current line terminator to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Boolean)	</TD>
            <TD>Writes the text representation of the specified Boolean value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Char)	</TD>
            <TD>Writes the specified Unicode character, followed by the current line terminator, value to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Char[])	</TD>
            <TD>Writes the specified array of Unicode characters, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Char[], Int32, Int32)	</TD>
            <TD>Writes the specified subarray of Unicode characters, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Decimal)	</TD>
            <TD>Writes the text representation of the specified Decimal value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Double)	</TD>
            <TD>Writes the text representation of the specified double-precision floating-point value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Int32)	</TD>
            <TD>Writes the text representation of the specified 32-bit signed integer value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Int64)	</TD>
            <TD>Writes the text representation of the specified 64-bit signed integer value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Object)	</TD>
            <TD>Writes the text representation of the specified object, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(Single)	</TD>
            <TD>Writes the text representation of the specified single-precision floating-point value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(String)	</TD>
            <TD>Writes the specified string value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(String, Object)	</TD>
            <TD>Writes the text representation of the specified object, followed by the current line terminator, to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>WriteLine(String, Object, Object)	</TD>
            <TD>Writes the text representation of the specified objects, followed by the current line terminator, to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>WriteLine(String, Object, Object, Object)	</TD>
            <TD>Writes the text representation of the specified objects, followed by the current line terminator, to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>WriteLine(String, Object, Object, Object, Object)	</TD>
            <TD>Writes the text representation of the specified objects and variable-length parameter list, followed by the current line terminator, to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>WriteLine(String, Object[])	</TD>
            <TD>Writes the text representation of the specified array of objects, followed by the current line terminator, to the standard output stream using the specified format information.</TD>
        </TR>
        <TR>
            <TD>WriteLine(UInt32)	</TD>
            <TD>Writes the text representation of the specified 32-bit unsigned integer value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
        <TR>
            <TD>WriteLine(UInt64)	</TD>
            <TD>Writes the text representation of the specified 64-bit unsigned integer value, followed by the current line terminator, to the standard output stream.</TD>
        </TR>
    </TABLE>
