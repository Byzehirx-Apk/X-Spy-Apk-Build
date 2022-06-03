.class public Lgnu/xml/XMLPrinter;
.super Lgnu/mapping/OutPort;
.source "XMLPrinter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/XConsumer;


# static fields
.field private static final COMMENT:I = -0x5

.field private static final ELEMENT_END:I = -0x4

.field private static final ELEMENT_START:I = -0x3

.field static final HtmlEmptyTags:Ljava/lang/String; = "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

.field private static final KEYWORD:I = -0x6

.field private static final PROC_INST:I = -0x7

.field private static final WORD:I = -0x2

.field public static final doctypePublic:Lgnu/mapping/ThreadLocation;

.field public static final doctypeSystem:Lgnu/mapping/ThreadLocation;

.field public static final indentLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field canonicalize:Z

.field public canonicalizeCDATA:Z

.field elementNameStack:[Ljava/lang/Object;

.field elementNesting:I

.field public escapeNonAscii:Z

.field public escapeText:Z

.field inAttribute:Z

.field inComment:I

.field inDocument:Z

.field inStartTag:Z

.field public indentAttributes:Z

.field isHtml:Z

.field isHtmlOrXhtml:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

.field needXMLdecl:Z

.field prev:I

.field public printIndent:I

.field printXMLdecl:Z

.field savedHighSurrogate:C

.field public strict:Z

.field style:Ljava/lang/Object;

.field undeclareNamespaces:Z

.field public useEmptyElementTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "doctype-system"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    .line 59
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "doctype-public"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    .line 61
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "xml-indent"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move v2, p2

    .local v2, "autoFlush":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/mapping/OutPort;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 25
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    move-object v3, v0

    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    move-object v3, v0

    const/16 v4, 0x20

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, v0

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 25
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    move-object v2, v0

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    move-object v2, v0

    const/16 v3, 0x20

    iput v3, v2, Lgnu/xml/XMLPrinter;->prev:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "path":Lgnu/text/Path;
    move-object v3, v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    .line 25
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    move-object v3, v0

    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    move-object v3, v0

    const/16 v4, 0x20

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 8

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move v2, p2

    .local v2, "autoFlush":Z
    move-object v3, v0

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 25
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    move-object v3, v0

    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    move-object v3, v0

    const/16 v4, 0x20

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 25
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    move-object v2, v0

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    move-object v2, v0

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    move-object v2, v0

    const/16 v3, 0x20

    iput v3, v2, Lgnu/xml/XMLPrinter;->prev:I

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move v2, p2

    .local v2, "autoFlush":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Z)V

    .line 25
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    move-object v3, v0

    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Lgnu/xml/NamespaceBinding;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    move-object v3, v0

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    move-object v3, v0

    const/16 v4, 0x20

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 96
    return-void
.end method

.method static formatDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v5, v0

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v1, v5

    .line 693
    .local v1, "dot":I
    move v5, v1

    if-ltz v5, :cond_3

    .line 695
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    .line 696
    .local v2, "len":I
    move v5, v2

    move v3, v5

    .line 698
    .local v3, "pos":I
    :goto_0
    move-object v5, v0

    add-int/lit8 v3, v3, -0x1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 699
    .local v4, "ch":C
    move v5, v4

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    .line 701
    move v5, v4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_0

    .line 702
    add-int/lit8 v3, v3, 0x1

    .line 703
    :cond_0
    move v5, v3

    move v6, v2

    if-ne v5, v6, :cond_1

    move-object v5, v0

    :goto_1
    move-object v0, v5

    .line 707
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "pos":I
    .end local v4    # "ch":C
    :goto_2
    return-object v0

    .line 703
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "pos":I
    .restart local v4    # "ch":C
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 705
    :cond_2
    goto :goto_0

    .line 707
    .end local v2    # "len":I
    .end local v3    # "pos":I
    .end local v4    # "ch":C
    :cond_3
    move-object v5, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public static formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "dec":Ljava/math/BigDecimal;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "dec":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 10

    .prologue
    .line 643
    move-wide v0, p0

    .local v0, "d":D
    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 644
    const-string/jumbo v6, "NaN"

    move-object v0, v6

    .line 655
    .end local v0    # "d":D
    .local v2, "neg":Z
    :goto_0
    return-object v0

    .line 645
    .end local v2    # "neg":Z
    .restart local v0    # "d":D
    :cond_0
    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v2, v6

    .line 646
    .restart local v2    # "neg":Z
    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 647
    move v6, v2

    if-eqz v6, :cond_2

    const-string/jumbo v6, "-INF"

    :goto_2
    move-object v0, v6

    goto :goto_0

    .line 645
    .end local v2    # "neg":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 647
    .restart local v2    # "neg":Z
    :cond_2
    const-string/jumbo v6, "INF"

    goto :goto_2

    .line 648
    :cond_3
    move v6, v2

    if-eqz v6, :cond_5

    move-wide v6, v0

    neg-double v6, v6

    :goto_3
    move-wide v3, v6

    .line 649
    .local v3, "dabs":D
    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 652
    .local v5, "dstr":Ljava/lang/String;
    move-wide v6, v3

    const-wide v8, 0x412e848000000000L    # 1000000.0

    cmpl-double v6, v6, v8

    if-gez v6, :cond_4

    move-wide v6, v3

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_6

    :cond_4
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_6

    .line 653
    move-object v6, v5

    invoke-static {v6}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 648
    .end local v3    # "dabs":D
    .end local v5    # "dstr":Ljava/lang/String;
    :cond_5
    move-wide v6, v0

    goto :goto_3

    .line 655
    .restart local v3    # "dabs":D
    .restart local v5    # "dstr":Ljava/lang/String;
    :cond_6
    move-object v6, v5

    invoke-static {v6}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public static formatFloat(F)Ljava/lang/String;
    .locals 8

    .prologue
    .line 661
    move v0, p0

    .local v0, "f":F
    move v4, v0

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    const-string/jumbo v4, "NaN"

    move-object v0, v4

    .line 673
    .end local v0    # "f":F
    .local v1, "neg":Z
    :goto_0
    return-object v0

    .line 663
    .end local v1    # "neg":Z
    .restart local v0    # "f":F
    :cond_0
    move v4, v0

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    .line 664
    .restart local v1    # "neg":Z
    move v4, v0

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 665
    move v4, v1

    if-eqz v4, :cond_2

    const-string/jumbo v4, "-INF"

    :goto_2
    move-object v0, v4

    goto :goto_0

    .line 663
    .end local v1    # "neg":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 665
    .restart local v1    # "neg":Z
    :cond_2
    const-string/jumbo v4, "INF"

    goto :goto_2

    .line 666
    :cond_3
    move v4, v1

    if-eqz v4, :cond_5

    move v4, v0

    neg-float v4, v4

    :goto_3
    move v2, v4

    .line 667
    .local v2, "fabs":F
    move v4, v0

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 670
    .local v3, "fstr":Ljava/lang/String;
    move v4, v2

    const v5, 0x49742400    # 1000000.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_4

    move v4, v2

    float-to-double v4, v4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    :cond_4
    move v4, v2

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_6

    .line 671
    move-object v4, v3

    invoke-static {v4}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 666
    .end local v2    # "fabs":F
    .end local v3    # "fstr":Ljava/lang/String;
    :cond_5
    move v4, v0

    goto :goto_3

    .line 673
    .restart local v2    # "fabs":F
    .restart local v3    # "fstr":Ljava/lang/String;
    :cond_6
    move-object v4, v3

    invoke-static {v4}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static isHtmlEmptyElementTag(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 515
    .local v1, "index":I
    move v2, v1

    if-lez v2, :cond_0

    const-string/jumbo v2, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "out":Lgnu/mapping/OutPort;
    move-object v1, p1

    .local v1, "style":Ljava/lang/Object;
    new-instance v3, Lgnu/xml/XMLPrinter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    move-object v2, v3

    .line 121
    .local v2, "xout":Lgnu/xml/XMLPrinter;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 122
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "out":Lgnu/mapping/OutPort;
    return-object v0
.end method

.method private startWord()V
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 242
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->writeWordStart()V

    .line 243
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    new-instance v2, Ljava/io/StringWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v2

    .line 130
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Lgnu/xml/XMLPrinter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 131
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public beginComment()V
    .locals 3

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 843
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v1, :cond_1

    .line 845
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 846
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLPrinter;->printIndent:I

    if-lez v2, :cond_2

    const/16 v2, 0x52

    :goto_0
    invoke-virtual {v1, v2}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 849
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v2, "<!--"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 850
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lgnu/xml/XMLPrinter;->inComment:I

    .line 851
    return-void

    .line 846
    :cond_2
    const/16 v2, 0x4e

    goto :goto_0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .prologue
    .line 323
    return-void
.end method

.method public closeTag()V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v1, :cond_2

    .line 266
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v1, :cond_0

    .line 267
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 268
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(I)V

    .line 269
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 270
    move-object v1, v0

    const/4 v2, -0x3

    iput v2, v1, Lgnu/xml/XMLPrinter;->prev:I

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-eqz v1, :cond_1

    .line 275
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v2, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 276
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v1, :cond_3

    .line 278
    move-object v1, v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    :cond_3
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 281
    move-object v1, v0

    const/16 v2, 0x3e

    iput v2, v1, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 5

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "position":Lgnu/lists/SeqPosition;
    move-object v2, v1

    iget-object v2, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v3, v1

    iget v3, v3, Lgnu/lists/SeqPosition;->ipos:I

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v2

    .line 920
    return-void
.end method

.method public endAttribute()V
    .locals 3

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v1, :cond_1

    .line 619
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v2, -0x6

    if-eq v1, v2, :cond_0

    .line 621
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(I)V

    .line 622
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 624
    :cond_0
    move-object v1, v0

    const/16 v2, 0x20

    iput v2, v1, Lgnu/xml/XMLPrinter;->prev:I

    .line 626
    :cond_1
    return-void
.end method

.method public endComment()V
    .locals 3

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v2, "-->"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 856
    move-object v1, v0

    const/4 v2, -0x5

    iput v2, v1, Lgnu/xml/XMLPrinter;->prev:I

    .line 857
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/xml/XMLPrinter;->inComment:I

    .line 858
    return-void
.end method

.method public endDocument()V
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 316
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v1, :cond_0

    .line 317
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 318
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->freshLine()V

    .line 319
    return-void
.end method

.method public endElement()V
    .locals 16

    .prologue
    .line 536
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-nez v9, :cond_0

    .line 537
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 538
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    move-object v10, v0

    iget v10, v10, Lgnu/xml/XMLPrinter;->elementNesting:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v1, v9

    .line 541
    .local v1, "type":Ljava/lang/Object;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/xml/XMLPrinter;->getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 543
    .local v2, "typeName":Ljava/lang/String;
    move-object v9, v0

    iget-boolean v9, v9, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-eqz v9, :cond_d

    .line 545
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v9, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v9, :cond_1

    .line 547
    move-object v9, v0

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 549
    :cond_1
    const/4 v9, 0x0

    move-object v3, v9

    .line 550
    .local v3, "end":Ljava/lang/String;
    move-object v9, v2

    if-eqz v9, :cond_8

    move-object v9, v2

    invoke-static {v9}, Lgnu/xml/XMLPrinter;->isHtmlEmptyElementTag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 551
    .local v4, "isEmpty":Z
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-eqz v9, :cond_2

    move-object v9, v2

    if-eqz v9, :cond_3

    move v9, v4

    if-nez v9, :cond_3

    .line 554
    :cond_2
    move-object v9, v1

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_3

    .line 556
    move-object v9, v1

    check-cast v9, Lgnu/mapping/Symbol;

    move-object v5, v9

    .line 557
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 558
    .local v6, "prefix":Ljava/lang/String;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 559
    .local v7, "uri":Ljava/lang/String;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 560
    .local v8, "local":Ljava/lang/String;
    move-object v9, v6

    const-string/jumbo v10, ""

    if-eq v9, v10, :cond_9

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "></"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 566
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "local":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v9, v3

    if-nez v9, :cond_4

    .line 567
    move v9, v4

    if-eqz v9, :cond_b

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v9, :cond_b

    const-string/jumbo v9, ">"

    :goto_2
    move-object v3, v9

    .line 568
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 569
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 570
    .line 584
    .end local v3    # "end":Ljava/lang/String;
    .end local v4    # "isEmpty":Z
    :goto_3
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v9, :cond_5

    .line 586
    move-object v9, v0

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 588
    :cond_5
    move-object v9, v0

    const/4 v10, -0x4

    iput v10, v9, Lgnu/xml/XMLPrinter;->prev:I

    .line 589
    move-object v9, v2

    if-eqz v9, :cond_7

    move-object v9, v0

    iget-boolean v9, v9, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v9, :cond_7

    const-string/jumbo v9, "script"

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "style"

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 591
    :cond_6
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 593
    :cond_7
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object v11, v0

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    iget v12, v12, Lgnu/xml/XMLPrinter;->elementNesting:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object v14, v11

    move v15, v12

    move v11, v15

    move-object v12, v14

    move v13, v15

    iput v13, v12, Lgnu/xml/XMLPrinter;->elementNesting:I

    aget-object v10, v10, v11

    iput-object v10, v9, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 594
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object v10, v0

    iget v10, v10, Lgnu/xml/XMLPrinter;->elementNesting:I

    const/4 v11, 0x0

    aput-object v11, v9, v10

    .line 595
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    move-object v10, v0

    iget v10, v10, Lgnu/xml/XMLPrinter;->elementNesting:I

    const/4 v11, 0x0

    aput-object v11, v9, v10

    .line 596
    return-void

    .line 550
    .restart local v3    # "end":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 562
    .restart local v4    # "isEmpty":Z
    .restart local v5    # "sym":Lgnu/mapping/Symbol;
    .restart local v6    # "prefix":Ljava/lang/String;
    .restart local v7    # "uri":Ljava/lang/String;
    .restart local v8    # "local":Ljava/lang/String;
    :cond_9
    move-object v9, v7

    const-string/jumbo v10, ""

    if-eq v9, v10, :cond_a

    move-object v9, v7

    if-nez v9, :cond_3

    .line 563
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "></"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    goto/16 :goto_1

    .line 567
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "local":Ljava/lang/String;
    :cond_b
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    const-string/jumbo v9, " />"

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v9, "/>"

    goto/16 :goto_2

    .line 573
    .end local v3    # "end":Ljava/lang/String;
    .end local v4    # "isEmpty":Z
    :cond_d
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v9, :cond_e

    .line 575
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/xml/XMLPrinter;->setIndentation(IZ)V

    .line 576
    move-object v9, v0

    iget v9, v9, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v10, -0x4

    if-ne v9, v10, :cond_e

    .line 577
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lgnu/xml/XMLPrinter;->printIndent:I

    if-lez v10, :cond_f

    const/16 v10, 0x52

    :goto_4
    invoke-virtual {v9, v10}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 580
    :cond_e
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v10, "</"

    invoke-virtual {v9, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 581
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 582
    move-object v9, v0

    iget-object v9, v9, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v10, ">"

    invoke-virtual {v9, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 577
    :cond_f
    const/16 v10, 0x4e

    goto :goto_4
.end method

.method public endEntity()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method protected endNumber()V
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 260
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "code":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serialization error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_2

    .line 523
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    move-object v2, v4

    .line 524
    .local v2, "sym":Lgnu/mapping/Symbol;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 525
    .local v3, "uri":Ljava/lang/String;
    move-object v4, v3

    const-string/jumbo v5, "http://www.w3.org/1999/xhtml"

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    if-eqz v4, :cond_1

    move-object v4, v3

    const-string/jumbo v5, ""

    if-ne v4, v5, :cond_1

    .line 527
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 531
    .end local v0    # "this":Lgnu/xml/XMLPrinter;
    .end local v2    # "sym":Lgnu/mapping/Symbol;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 528
    .line 531
    .restart local v0    # "this":Lgnu/xml/XMLPrinter;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 529
    :cond_2
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    if-eqz v4, :cond_1

    .line 530
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/xml/XMLPrinter;
    return v0
.end method

.method mustHexEscape(I)Z
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move v1, p1

    .local v1, "v":I
    move v2, v1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x9f

    if-le v2, v3, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    if-nez v2, :cond_1

    :cond_0
    move v2, v1

    const/16 v3, 0x2028

    if-eq v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v2, :cond_1

    move v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/xml/XMLPrinter;
    return v0

    .restart local v0    # "this":Lgnu/xml/XMLPrinter;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public print(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 713
    move-object v2, v1

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 718
    .end local v1    # "v":Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_4

    const-string/jumbo v3, "(null)"

    :goto_1
    invoke-virtual {v2, v3}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 719
    return-void

    .line 714
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-nez v2, :cond_2

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/DFloNum;

    if-eqz v2, :cond_3

    .line 715
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v1, "v":Ljava/lang/String;
    goto :goto_0

    .line 716
    .local v1, "v":Ljava/lang/Object;
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 717
    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v1, "v":Ljava/lang/String;
    goto :goto_0

    .line 718
    .end local v1    # "v":Ljava/lang/String;
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method setIndentMode()V
    .locals 5

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    sget-object v3, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 288
    .local v1, "xmlIndent":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 289
    .local v2, "indent":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 290
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 297
    :goto_1
    return-void

    .line 288
    .end local v2    # "indent":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 291
    .restart local v2    # "indent":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "pretty"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_1

    .line 293
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "always"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v2

    const-string/jumbo v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    :cond_3
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_1

    .line 296
    :cond_4
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_1
.end method

.method public setPrintXMLdecl(Z)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    return-void
.end method

.method public setStyle(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "style":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->style:Ljava/lang/Object;

    .line 137
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/xml/XMLPrinter;->canonicalize:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    iput v3, v2, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 138
    const-string/jumbo v2, "html"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 141
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 142
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne v2, v3, :cond_0

    .line 145
    move-object v2, v0

    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 149
    :cond_0
    :goto_1
    const-string/jumbo v2, "xhtml"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 152
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 154
    :cond_1
    const-string/jumbo v2, "plain"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 156
    :cond_2
    return-void

    .line 137
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 147
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    if-ne v2, v3, :cond_0

    .line 148
    move-object v2, v0

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v3, v2, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_1
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xml/XMLPrinter;->strict:Z

    if-eqz v2, :cond_0

    .line 603
    move-object v2, v0

    const-string/jumbo v3, "attribute not in element"

    const-string/jumbo v4, "SENR0001"

    invoke-virtual {v2, v3, v4}, Lgnu/xml/XMLPrinter;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v2, :cond_1

    .line 605
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(I)V

    .line 606
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 607
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(I)V

    .line 608
    move-object v2, v0

    iget v2, v2, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v2, :cond_2

    .line 609
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLPrinter;->writeBreakFill()V

    .line 610
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 611
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v3, "=\""

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 612
    move-object v2, v0

    const/16 v3, 0x20

    iput v3, v2, Lgnu/xml/XMLPrinter;->prev:I

    .line 613
    return-void
.end method

.method public startDocument()V
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    if-eqz v1, :cond_0

    .line 305
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 307
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 308
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 309
    move-object v1, v0

    iget v1, v1, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v1, :cond_1

    move-object v1, v0

    iget-boolean v1, v1, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-nez v1, :cond_1

    .line 310
    move-object v1, v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 24

    .prologue
    .line 348
    move-object/from16 v2, p0

    .local v2, "this":Lgnu/xml/XMLPrinter;
    move-object/from16 v3, p1

    .local v3, "type":Ljava/lang/Object;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 349
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 351
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->inDocument:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 352
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 353
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v17, v0

    const/16 v18, -0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 354
    move-object/from16 v17, v2

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 355
    :cond_1
    sget-object v17, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    .line 356
    .local v4, "systemIdentifier":Ljava/lang/Object;
    move-object/from16 v17, v4

    if-eqz v17, :cond_2

    .line 358
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 359
    .local v5, "systemId":Ljava/lang/String;
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 361
    sget-object v17, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    .line 362
    .local v6, "publicIdentifier":Ljava/lang/Object;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<!DOCTYPE "

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 363
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 364
    move-object/from16 v17, v6

    if-nez v17, :cond_7

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v7, v17

    .line 366
    .local v7, "publicId":Ljava/lang/String;
    move-object/from16 v17, v7

    if-eqz v17, :cond_8

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 368
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, " PUBLIC \""

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 369
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 370
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\" \""

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 376
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 377
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\">"

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 378
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/XMLPrinter;->println()V

    .line 382
    .end local v4    # "systemIdentifier":Ljava/lang/Object;
    .end local v5    # "systemId":Ljava/lang/String;
    .end local v6    # "publicIdentifier":Ljava/lang/Object;
    .end local v7    # "publicId":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    move/from16 v17, v0

    if-ltz v17, :cond_5

    .line 384
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v17, v0

    const/16 v18, -0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v17, v0

    const/16 v18, -0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v17, v0

    const/16 v18, -0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 385
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    move/from16 v18, v0

    if-lez v18, :cond_9

    const/16 v18, 0x52

    :goto_2
    invoke-virtual/range {v17 .. v18}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 387
    :cond_4
    move-object/from16 v17, v2

    const-string/jumbo v18, ""

    const-string/jumbo v19, ""

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v20}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const/16 v18, 0x3c

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(I)V

    .line 390
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 391
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    move/from16 v17, v0

    if-ltz v17, :cond_6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 392
    move-object/from16 v17, v2

    const-string/jumbo v18, ""

    const-string/jumbo v19, ""

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v20}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v18, v0

    move-object/from16 v19, v3

    aput-object v19, v17, v18

    .line 394
    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 395
    .local v4, "elementBindings":Lgnu/xml/NamespaceBinding;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v0, v19

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v19, v0

    move-object/from16 v22, v18

    move/from16 v23, v19

    move/from16 v18, v23

    move-object/from16 v19, v22

    move/from16 v20, v23

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/xml/XMLPrinter;->elementNesting:I

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    .line 396
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/xml/XName;

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 398
    move-object/from16 v17, v3

    check-cast v17, Lgnu/xml/XName;

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    .line 399
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v17

    move-object/from16 v5, v17

    .line 401
    .local v5, "join":Lgnu/xml/NamespaceBinding;
    move-object/from16 v17, v4

    if-nez v17, :cond_a

    const/16 v17, 0x0

    :goto_3
    move/from16 v6, v17

    .line 403
    .local v6, "numBindings":I
    move/from16 v17, v6

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    .line 404
    .local v7, "sortedBindings":[Lgnu/xml/NamespaceBinding;
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 405
    .local v8, "i":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    move/from16 v17, v0

    move/from16 v9, v17

    .line 407
    .local v9, "sortNamespaces":Z
    move-object/from16 v17, v4

    move-object/from16 v10, v17

    .local v10, "ns":Lgnu/xml/NamespaceBinding;
    :goto_4
    move-object/from16 v17, v10

    move-object/from16 v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 409
    move/from16 v17, v8

    move/from16 v11, v17

    .line 410
    .local v11, "j":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 411
    .local v12, "skip":Z
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v13, v17

    .line 412
    .local v13, "uri":Ljava/lang/String;
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 413
    .local v14, "prefix":Ljava/lang/String;
    :goto_5
    add-int/lit8 v11, v11, -0x1

    move/from16 v17, v11

    if-ltz v17, :cond_d

    .line 415
    move-object/from16 v17, v7

    move/from16 v18, v11

    aget-object v17, v17, v18

    move-object/from16 v15, v17

    .line 417
    .local v15, "ns_j":Lgnu/xml/NamespaceBinding;
    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 418
    .local v16, "prefix_j":Ljava/lang/String;
    move-object/from16 v17, v14

    move-object/from16 v18, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 419
    .line 407
    .end local v15    # "ns_j":Lgnu/xml/NamespaceBinding;
    .end local v16    # "prefix_j":Ljava/lang/String;
    :goto_6
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    goto :goto_4

    .line 364
    .end local v7    # "sortedBindings":[Lgnu/xml/NamespaceBinding;
    .end local v8    # "i":I
    .end local v9    # "sortNamespaces":Z
    .end local v10    # "ns":Lgnu/xml/NamespaceBinding;
    .end local v11    # "j":I
    .end local v12    # "skip":Z
    .end local v13    # "uri":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    .local v4, "systemIdentifier":Ljava/lang/Object;
    .local v5, "systemId":Ljava/lang/String;
    .local v6, "publicIdentifier":Ljava/lang/Object;
    :cond_7
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 374
    .local v7, "publicId":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, " SYSTEM \""

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 385
    .end local v4    # "systemIdentifier":Ljava/lang/Object;
    .end local v5    # "systemId":Ljava/lang/String;
    .end local v6    # "publicIdentifier":Ljava/lang/Object;
    .end local v7    # "publicId":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x4e

    goto/16 :goto_2

    .line 401
    .local v4, "elementBindings":Lgnu/xml/NamespaceBinding;
    .local v5, "join":Lgnu/xml/NamespaceBinding;
    :cond_a
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/NamespaceBinding;->count(Lgnu/xml/NamespaceBinding;)I

    move-result v17

    goto/16 :goto_3

    .line 424
    .local v6, "numBindings":I
    .local v7, "sortedBindings":[Lgnu/xml/NamespaceBinding;
    .restart local v8    # "i":I
    .restart local v9    # "sortNamespaces":Z
    .restart local v10    # "ns":Lgnu/xml/NamespaceBinding;
    .restart local v11    # "j":I
    .restart local v12    # "skip":Z
    .restart local v13    # "uri":Ljava/lang/String;
    .restart local v14    # "prefix":Ljava/lang/String;
    .restart local v15    # "ns_j":Lgnu/xml/NamespaceBinding;
    .restart local v16    # "prefix_j":Ljava/lang/String;
    :cond_b
    move/from16 v17, v9

    if-nez v17, :cond_c

    .line 425
    goto :goto_5

    .line 426
    :cond_c
    move-object/from16 v17, v14

    if-nez v17, :cond_e

    .line 427
    .line 432
    .end local v15    # "ns_j":Lgnu/xml/NamespaceBinding;
    .end local v16    # "prefix_j":Ljava/lang/String;
    :cond_d
    :goto_7
    move/from16 v17, v9

    if-eqz v17, :cond_10

    .line 433
    add-int/lit8 v11, v11, 0x1

    .line 436
    :goto_8
    move-object/from16 v17, v7

    move/from16 v18, v11

    move-object/from16 v19, v10

    aput-object v19, v17, v18

    .line 437
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 428
    .restart local v15    # "ns_j":Lgnu/xml/NamespaceBinding;
    .restart local v16    # "prefix_j":Ljava/lang/String;
    :cond_e
    move-object/from16 v17, v16

    if-eqz v17, :cond_f

    move-object/from16 v17, v14

    move-object/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-gtz v17, :cond_f

    .line 429
    goto :goto_7

    .line 430
    :cond_f
    move-object/from16 v17, v7

    move/from16 v18, v11

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v15

    aput-object v19, v17, v18

    .line 431
    goto/16 :goto_5

    .line 435
    .end local v15    # "ns_j":Lgnu/xml/NamespaceBinding;
    .end local v16    # "prefix_j":Ljava/lang/String;
    :cond_10
    move/from16 v17, v8

    move/from16 v11, v17

    goto :goto_8

    .line 439
    .end local v11    # "j":I
    .end local v12    # "skip":Z
    .end local v13    # "uri":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_11
    move/from16 v17, v8

    move/from16 v6, v17

    .line 442
    move/from16 v17, v6

    move/from16 v8, v17

    :goto_9
    add-int/lit8 v8, v8, -0x1

    move/from16 v17, v8

    if-ltz v17, :cond_16

    .line 444
    move-object/from16 v17, v7

    move/from16 v18, v8

    aget-object v17, v17, v18

    move-object/from16 v10, v17

    .line 445
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 446
    .local v11, "prefix":Ljava/lang/String;
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 447
    .local v12, "uri":Ljava/lang/String;
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 449
    goto :goto_9

    .line 450
    :cond_12
    move-object/from16 v17, v12

    if-nez v17, :cond_13

    move-object/from16 v17, v11

    if-eqz v17, :cond_13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 451
    goto :goto_9

    .line 452
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(I)V

    .line 453
    move-object/from16 v17, v11

    if-nez v17, :cond_15

    .line 454
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "xmlns"

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 460
    :goto_a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\""

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 461
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 462
    move-object/from16 v17, v12

    if-eqz v17, :cond_14

    .line 463
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 464
    :cond_14
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 465
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(I)V

    .line 466
    goto/16 :goto_9

    .line 457
    :cond_15
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "xmlns:"

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 458
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 467
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v12    # "uri":Ljava/lang/String;
    :cond_16
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    move/from16 v17, v0

    if-eqz v17, :cond_19

    .line 472
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 473
    :goto_b
    move-object/from16 v17, v10

    move-object/from16 v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_19

    .line 475
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 476
    .restart local v11    # "prefix":Ljava/lang/String;
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v17, v4

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_17

    .line 478
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(I)V

    .line 479
    move-object/from16 v17, v11

    if-nez v17, :cond_18

    .line 480
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "xmlns"

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 486
    :goto_c
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\"\""

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 473
    :cond_17
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    goto :goto_b

    .line 483
    :cond_18
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "xmlns:"

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 484
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_c

    .line 490
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_19
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 492
    .end local v5    # "join":Lgnu/xml/NamespaceBinding;
    .end local v6    # "numBindings":I
    .end local v7    # "sortedBindings":[Lgnu/xml/NamespaceBinding;
    .end local v8    # "i":I
    .end local v9    # "sortNamespaces":Z
    .end local v10    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_1a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1b

    .line 494
    const/16 v17, 0x2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    .line 495
    .local v5, "nstmp":[Lgnu/xml/NamespaceBinding;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v19, v5

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 497
    const/16 v17, 0x2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 498
    .local v6, "nmtmp":[Ljava/lang/Object;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v19, v6

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v21, v0

    invoke-static/range {v17 .. v21}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 502
    .end local v5    # "nstmp":[Lgnu/xml/NamespaceBinding;
    .end local v6    # "nmtmp":[Ljava/lang/Object;
    :cond_1b
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 504
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lgnu/xml/XMLPrinter;->getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 505
    .local v5, "typeName":Ljava/lang/String;
    const-string/jumbo v17, "script"

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    const-string/jumbo v17, "style"

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 506
    :cond_1c
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 507
    :cond_1d
    return-void
.end method

.method protected startNumber()V
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 255
    return-void
.end method

.method public write(I)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move v1, p1

    .local v1, "v":I
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 170
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_4

    .line 172
    move v3, v1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 174
    :cond_0
    move v3, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLPrinter;->prev:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    .line 175
    :cond_1
    move-object v3, v0

    const/16 v4, 0x52

    invoke-virtual {v3, v4}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 176
    :cond_2
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v3, :cond_3

    .line 177
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->inComment:I

    .line 178
    .line 237
    :cond_3
    :goto_0
    return-void

    .line 181
    :cond_4
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v3, :cond_5

    .line 183
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(I)V

    .line 184
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 237
    :goto_1
    goto :goto_0

    .line 186
    :cond_5
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v3, :cond_8

    .line 188
    move v3, v1

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_7

    .line 190
    move-object v3, v0

    iget v3, v3, Lgnu/xml/XMLPrinter;->inComment:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 191
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lgnu/xml/XMLPrinter;->inComment:I

    .line 197
    :goto_2
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lgnu/mapping/OutPort;->write(I)V

    goto :goto_1

    .line 193
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(I)V

    goto :goto_2

    .line 196
    :cond_7
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lgnu/xml/XMLPrinter;->inComment:I

    goto :goto_2

    .line 201
    :cond_8
    move-object v3, v0

    const/16 v4, 0x3b

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 202
    move v3, v1

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_a

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v3, :cond_9

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v3, :cond_a

    .line 203
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v4, "&lt;"

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_a
    move v3, v1

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_b

    .line 205
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v4, "&gt;"

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_b
    move v3, v1

    const/16 v4, 0x26

    if-ne v3, v4, :cond_c

    .line 207
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v4, "&amp;"

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_c
    move v3, v1

    const/16 v4, 0x22

    if-ne v3, v4, :cond_d

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v3, :cond_d

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v4, "&quot;"

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_d
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 212
    move v3, v1

    move v2, v3

    .line 213
    .local v2, "i":I
    move v3, v1

    const v4, 0xd800

    if-lt v3, v4, :cond_f

    .line 215
    move v3, v1

    const v4, 0xdc00

    if-ge v3, v4, :cond_e

    .line 217
    move-object v3, v0

    move v4, v1

    int-to-char v4, v4

    iput-char v4, v3, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    .line 218
    goto/16 :goto_0

    .line 220
    :cond_e
    move v3, v1

    const v4, 0xe000

    if-ge v3, v4, :cond_f

    .line 224
    move-object v3, v0

    iget-char v3, v3, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    const v4, 0xd800

    sub-int/2addr v3, v4

    const/16 v4, 0x400

    mul-int/lit16 v3, v3, 0x400

    move v4, v2

    const v5, 0xdc00

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int/2addr v3, v4

    move v2, v3

    .line 226
    move-object v3, v0

    const/4 v4, 0x0

    iput-char v4, v3, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    .line 229
    :cond_f
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&#x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 230
    goto/16 :goto_1

    .line 233
    .end local v2    # "i":I
    :cond_10
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move v4, v1

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(I)V

    .line 234
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    goto/16 :goto_1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 11

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move v7, v3

    if-lez v7, :cond_5

    .line 777
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 778
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move v4, v7

    .line 779
    .local v4, "limit":I
    const/4 v7, 0x0

    move v5, v7

    .line 780
    .local v5, "count":I
    :goto_0
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 782
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 783
    .local v6, "c":C
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v7, :cond_2

    move v7, v6

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Lgnu/xml/XMLPrinter;->inComment:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 788
    :cond_0
    move v7, v5

    if-lez v7, :cond_1

    .line 789
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    sub-int/2addr v9, v10

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 790
    :cond_1
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 791
    const/4 v7, 0x0

    move v5, v7

    .line 795
    :goto_1
    goto :goto_0

    .line 783
    :cond_2
    move v7, v6

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x26

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget-boolean v7, v7, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v7, :cond_3

    move v7, v6

    const/16 v8, 0x22

    if-eq v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_0

    .line 794
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 796
    .end local v6    # "c":C
    :cond_4
    move v7, v5

    if-lez v7, :cond_5

    .line 797
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v8, v1

    move v9, v4

    move v10, v5

    sub-int/2addr v9, v10

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 799
    .end local v4    # "limit":I
    .end local v5    # "count":I
    :cond_5
    move-object v7, v0

    const/16 v8, 0x2d

    iput v8, v7, Lgnu/xml/XMLPrinter;->prev:I

    .line 800
    return-void
.end method

.method public write([CII)V
    .locals 11

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move v7, v3

    if-lez v7, :cond_5

    .line 806
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 807
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move v4, v7

    .line 808
    .local v4, "limit":I
    const/4 v7, 0x0

    move v5, v7

    .line 809
    .local v5, "count":I
    :goto_0
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 811
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v7, v7, v8

    move v6, v7

    .line 812
    .local v6, "c":C
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget v7, v7, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v7, :cond_2

    move v7, v6

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Lgnu/xml/XMLPrinter;->inComment:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 817
    :cond_0
    move v7, v5

    if-lez v7, :cond_1

    .line 818
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v5

    sub-int/2addr v9, v10

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 819
    :cond_1
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 820
    const/4 v7, 0x0

    move v5, v7

    .line 824
    :goto_1
    goto :goto_0

    .line 812
    :cond_2
    move v7, v6

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x26

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget-boolean v7, v7, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v7, :cond_3

    move v7, v6

    const/16 v8, 0x22

    if-eq v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_0

    .line 823
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 825
    .end local v6    # "c":C
    :cond_4
    move v7, v5

    if-lez v7, :cond_5

    .line 826
    move-object v7, v0

    iget-object v7, v7, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v8, v1

    move v9, v4

    move v10, v5

    sub-int/2addr v9, v10

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 828
    .end local v4    # "limit":I
    .end local v5    # "count":I
    :cond_5
    move-object v7, v0

    const/16 v8, 0x2d

    iput v8, v7, Lgnu/xml/XMLPrinter;->prev:I

    .line 829
    return-void
.end method

.method public writeBaseUri(Ljava/lang/Object;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/Object;

    .prologue
    .line 838
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 248
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lgnu/mapping/OutPort;->print(Z)V

    .line 249
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 250
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 11

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v6, v0

    iget-boolean v6, v6, Lgnu/xml/XMLPrinter;->canonicalizeCDATA:Z

    if-eqz v6, :cond_0

    .line 878
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 879
    .line 901
    :goto_0
    return-void

    .line 881
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 882
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v7, "<![CDATA["

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 883
    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    move v4, v6

    .line 886
    .local v4, "limit":I
    move v6, v2

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ge v6, v7, :cond_3

    .line 888
    move-object v6, v1

    move v7, v5

    aget-char v6, v6, v7

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_2

    move-object v6, v1

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-char v6, v6, v7

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_2

    move-object v6, v1

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-char v6, v6, v7

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_2

    .line 890
    move v6, v5

    move v7, v2

    if-le v6, v7, :cond_1

    .line 891
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v7, v1

    move v8, v2

    move v9, v5

    move v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 892
    :cond_1
    move-object v6, v0

    const-string/jumbo v7, "]]]><![CDATA[]>"

    invoke-virtual {v6, v7}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    .line 893
    move v6, v5

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    move v2, v6

    .line 894
    move v6, v4

    move v7, v2

    sub-int/2addr v6, v7

    move v3, v6

    .line 895
    move v6, v5

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v5, v6

    .line 886
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 898
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 899
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v7, "]]>"

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 900
    move-object v6, v0

    const/16 v7, 0x3e

    iput v7, v6, Lgnu/xml/XMLPrinter;->prev:I

    .line 901
    goto :goto_0
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 862
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "chars":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 863
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 864
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xml/XMLPrinter;->endComment()V

    .line 865
    return-void
.end method

.method public writeComment([CII)V
    .locals 8

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 870
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 871
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/xml/XMLPrinter;->endComment()V

    .line 872
    return-void
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-wide v1, p1

    .local v1, "d":D
    move-object v3, v0

    invoke-direct {v3}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 631
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-wide v4, v1

    invoke-static {v4, v5}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move v1, p1

    .local v1, "f":F
    move-object v2, v0

    invoke-direct {v2}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 637
    move-object v2, v0

    iget-object v2, v2, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move v3, v1

    invoke-static {v3}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_1

    .line 725
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v3}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 726
    move-object v3, v1

    check-cast v3, Lgnu/lists/SeqPosition;

    move-object v2, v3

    .line 727
    .local v2, "pos":Lgnu/lists/SeqPosition;
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v2

    iget v4, v4, Lgnu/lists/SeqPosition;->ipos:I

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 728
    move-object v3, v2

    iget-object v3, v3, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v3, v3, Lgnu/xml/NodeTree;

    if-eqz v3, :cond_0

    .line 729
    move-object v3, v0

    const/16 v4, 0x2d

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 730
    .line 760
    .end local v2    # "pos":Lgnu/lists/SeqPosition;
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/Consumable;

    if-eqz v3, :cond_2

    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/UnescapedData;

    if-nez v3, :cond_2

    .line 734
    move-object v3, v1

    check-cast v3, Lgnu/lists/Consumable;

    move-object v4, v0

    invoke-interface {v3, v4}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 735
    goto :goto_0

    .line 737
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Lgnu/expr/Keyword;

    if-eqz v3, :cond_3

    .line 739
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/expr/Keyword;

    invoke-virtual {v4}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/xml/XMLPrinter;->startAttribute(Ljava/lang/Object;)V

    .line 740
    move-object v3, v0

    const/4 v4, -0x6

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 741
    goto :goto_0

    .line 743
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 744
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/UnescapedData;

    if-eqz v3, :cond_4

    .line 746
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v3}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 747
    move-object v3, v0

    iget-object v3, v3, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v4, v1

    check-cast v4, Lgnu/lists/UnescapedData;

    invoke-virtual {v4}, Lgnu/lists/UnescapedData;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 748
    move-object v3, v0

    const/16 v4, 0x2d

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 760
    :goto_1
    goto :goto_0

    .line 750
    :cond_4
    move-object v3, v1

    instance-of v3, v3, Lgnu/text/Char;

    if-eqz v3, :cond_5

    .line 751
    move-object v3, v1

    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v3}, Lgnu/text/Char;->intValue()I

    move-result v3

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_1

    .line 754
    :cond_5
    move-object v3, v0

    invoke-direct {v3}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 755
    move-object v3, v0

    const/16 v4, 0x20

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    .line 756
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/Object;)V

    .line 757
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 758
    move-object v3, v0

    const/4 v4, -0x2

    iput v4, v3, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_1
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 6

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v3

    .line 834
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 9

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":[C
    move v3, p3

    .local v3, "offset":I
    move v4, p4

    .local v4, "length":I
    const-string/jumbo v5, "xml"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 908
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 909
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v6, "<?"

    invoke-virtual {v5, v6}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 910
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    .line 911
    move-object v5, v0

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lgnu/xml/XMLPrinter;->print(C)V

    .line 912
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 913
    move-object v5, v0

    iget-object v5, v5, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string/jumbo v6, "?>"

    invoke-virtual {v5, v6}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 914
    move-object v5, v0

    const/4 v6, -0x7

    iput v6, v5, Lgnu/xml/XMLPrinter;->prev:I

    .line 915
    return-void
.end method

.method protected writeQName(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lgnu/xml/XMLPrinter;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_1

    .line 333
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    move-object v2, v4

    .line 334
    .local v2, "sname":Lgnu/mapping/Symbol;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 335
    .local v3, "prefix":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 337
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 338
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lgnu/text/PrettyWriter;->write(I)V

    .line 340
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 341
    .line 344
    .end local v2    # "sname":Lgnu/mapping/Symbol;
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_0
    return-void

    .line 343
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v5, v1

    if-nez v5, :cond_2

    const-string/jumbo v5, "{null name}"

    :goto_1
    invoke-virtual {v4, v5}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    goto :goto_1
.end method
