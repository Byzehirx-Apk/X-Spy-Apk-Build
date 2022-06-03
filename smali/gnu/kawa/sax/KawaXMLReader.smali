.class public Lgnu/kawa/sax/KawaXMLReader;
.super Lgnu/kawa/sax/ContentConsumer;
.source "KawaXMLReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# instance fields
.field errorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/sax/ContentConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/sax/KawaXMLReader;
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/sax/KawaXMLReader;
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/sax/KawaXMLReader;
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/KawaXMLReader;
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/sax/KawaXMLReader;
    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    move-object v1, p1

    .local v1, "input":Lorg/xml/sax/InputSource;
    move-object v7, v1

    invoke-virtual {v7}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v7

    move-object v2, v7

    .line 69
    .local v2, "reader":Ljava/io/Reader;
    move-object v7, v2

    if-nez v7, :cond_0

    .line 70
    move-object v7, v1

    invoke-virtual {v7}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v7

    move-object v2, v7

    .line 71
    :cond_0
    new-instance v7, Lgnu/text/SourceMessages;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    move-object v3, v7

    .line 72
    .local v3, "messages":Lgnu/text/SourceMessages;
    new-instance v7, Lgnu/xml/XMLFilter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    move-object v4, v7

    .line 73
    .local v4, "filter":Lgnu/xml/XMLFilter;
    new-instance v7, Lgnu/text/LineBufferedReader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-direct {v8, v9}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v7

    .line 74
    .local v5, "lin":Lgnu/text/LineBufferedReader;
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 75
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/sax/KawaXMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 76
    move-object v7, v5

    move-object v8, v3

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V

    .line 77
    move-object v7, v3

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 78
    .local v6, "err":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 79
    new-instance v7, Lorg/xml/sax/SAXParseException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v7

    .line 80
    :cond_1
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 45
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 36
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/sax/KawaXMLReader;
    move-object v1, p1

    .local v1, "handler":Lorg/xml/sax/ErrorHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 58
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 23
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    return-void
.end method
