function TomCatsGetFinalNameFromTextureKit(fmt, textureKits)
    if type(textureKits) == "table" then
        return fmt:format(unpack(textureKits));
    else
        return fmt:format(textureKits);
    end
end