.class public Lkawa/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static boolClasses:[Ljava/lang/Class;

.field public static currentLoadPath:Ljava/lang/ThreadLocal;

.field public static defaultFormatInfo:[Ljava/lang/Object;

.field public static defaultFormatMethod:Ljava/lang/reflect/Method;

.field public static defaultFormatName:Ljava/lang/String;

.field static formats:[[Ljava/lang/Object;

.field private static httpPrinterClasses:[Ljava/lang/Class;

.field private static noClasses:[Ljava/lang/Class;

.field private static portArg:Ljava/lang/Object;

.field private static xmlPrinterClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sput-object v0, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const-class v3, Lgnu/mapping/OutPort;

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    sput-object v0, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const-class v3, Lgnu/mapping/OutPort;

    aput-object v3, v1, v2

    sput-object v0, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    .line 31
    const-string/jumbo v0, "(port)"

    sput-object v0, Lkawa/Shell;->portArg:Ljava/lang/Object;

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "scheme"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getSchemeFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "readable-scheme"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getSchemeFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "elisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getEmacsLispFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "readable-elisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getEmacsLispFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "clisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getCommonLispFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "readable-clisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getCommonLispFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "commonlisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getCommonLispFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "readable-commonlisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getCommonLispFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "xml"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.xml.XMLPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "make"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "html"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.xml.XMLPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "make"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    const-string/jumbo v6, "html"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "xhtml"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.xml.XMLPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "make"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    const-string/jumbo v6, "xhtml"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "cgi"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.xml.HttpPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "make"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    sget-object v6, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "ignore"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.lists.VoidConsumer"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "getInstance"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    sget-object v6, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    sput-object v0, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/Shell;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    move-object/from16 v0, p0

    .local v0, "fs":Ljava/io/InputStream;
    move-object/from16 v1, p1

    .local v1, "path":Lgnu/text/Path;
    move-object/from16 v2, p2

    .local v2, "env":Lgnu/mapping/Environment;
    move-object/from16 v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v11, v0

    const/4 v12, 0x5

    :try_start_0
    invoke-virtual {v11, v12}, Ljava/io/InputStream;->mark(I)V

    .line 355
    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    const/16 v12, 0x4b

    if-ne v11, v12, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v4, v11

    .line 357
    .local v4, "isZip":Z
    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    move v11, v4

    if-nez v11, :cond_1

    .line 359
    const/4 v11, 0x0

    move-object v0, v11

    .line 390
    .end local v0    # "fs":Ljava/io/InputStream;
    .end local v4    # "isZip":Z
    :goto_1
    return-object v0

    .line 355
    .restart local v0    # "fs":Ljava/io/InputStream;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 364
    .line 365
    .restart local v4    # "isZip":Z
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v11

    move-object v4, v11

    .line 367
    .local v4, "orig_env":Lgnu/mapping/Environment;
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 370
    .local v5, "name":Ljava/lang/String;
    move-object v11, v2

    move-object v12, v4

    if-eq v11, v12, :cond_2

    .line 371
    move-object v11, v2

    :try_start_1
    invoke-static {v11}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 372
    :cond_2
    move-object v11, v1

    instance-of v11, v11, Lgnu/text/FilePath;

    if-nez v11, :cond_4

    .line 373
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "load: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - not a file path"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :catch_0
    move-exception v11

    move-object v6, v11

    .line 385
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v11, Lgnu/mapping/WrappedException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "load: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    move-object v12, v4

    if-eq v11, v12, :cond_3

    .line 390
    move-object v11, v4

    invoke-static {v11}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_3
    move-object v11, v10

    throw v11

    .line 361
    .end local v4    # "orig_env":Lgnu/mapping/Environment;
    .end local v5    # "name":Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 363
    .local v4, "ex":Ljava/io/IOException;
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_1

    .line 374
    .local v4, "orig_env":Lgnu/mapping/Environment;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    move-object v11, v1

    :try_start_3
    check-cast v11, Lgnu/text/FilePath;

    invoke-virtual {v11}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v11

    move-object v6, v11

    .line 375
    .local v6, "zfile":Ljava/io/File;
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 376
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "load: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 377
    :cond_5
    move-object v11, v6

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_6

    .line 378
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "load: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - not readable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 379
    :cond_6
    new-instance v11, Lgnu/bytecode/ZipLoader;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v5

    invoke-direct {v12, v13}, Lgnu/bytecode/ZipLoader;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 380
    .local v7, "loader":Lgnu/bytecode/ZipLoader;
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/bytecode/ZipLoader;->loadAllClasses()Ljava/lang/Class;

    move-result-object v11

    move-object v8, v11

    .line 381
    .local v8, "clas":Ljava/lang/Class;
    move-object v11, v8

    move-object v12, v3

    invoke-static {v11, v12}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    move-object v9, v11

    .line 389
    move-object v11, v2

    move-object v12, v4

    if-eq v11, v12, :cond_7

    .line 390
    move-object v11, v4

    invoke-static {v11}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_7
    move-object v11, v9

    move-object v0, v11

    goto/16 :goto_1
.end method

.method static compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    move-object/from16 v0, p0

    .local v0, "port":Lgnu/mapping/InPort;
    move-object/from16 v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object/from16 v2, p2

    .local v2, "url":Ljava/net/URL;
    move-object/from16 v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object/from16 v4, p4

    .local v4, "messages":Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v10

    move-object v5, v10

    .line 525
    .local v5, "manager":Lgnu/expr/ModuleManager;
    move-object v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v10

    move-object v6, v10

    .line 526
    .local v6, "minfo":Lgnu/expr/ModuleInfo;
    move-object v10, v3

    move-object v11, v0

    move-object v12, v4

    const/4 v13, 0x1

    move-object v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v10

    move-object v7, v10

    .line 528
    .local v7, "comp":Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v10

    move-object v8, v10

    .line 529
    .local v8, "ctx":Lgnu/mapping/CallContext;
    move-object v10, v8

    sget-object v11, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v11, v10, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 530
    move-object v10, v1

    move-object v11, v7

    move-object v12, v2

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 531
    .local v9, "inst":Ljava/lang/Object;
    move-object v10, v9

    if-eqz v10, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 532
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 533
    .end local v0    # "port":Lgnu/mapping/InPort;
    :goto_0
    return-object v0

    .restart local v0    # "port":Lgnu/mapping/InPort;
    :cond_1
    new-instance v10, Lgnu/expr/CompiledModule;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v7

    invoke-virtual {v12}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v12

    move-object v13, v9

    move-object v14, v3

    invoke-direct {v11, v12, v13, v14}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    move-object v0, v10

    goto :goto_0
.end method

.method public static getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;
    .locals 10

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "out":Lgnu/mapping/OutPort;
    sget-object v4, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    move-object v1, v4

    .line 133
    .local v1, "info":[Ljava/lang/Object;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 134
    invoke-static {}, Lgnu/lists/VoidConsumer;->getInstance()Lgnu/lists/VoidConsumer;

    move-result-object v4

    move-object v0, v4

    .line 151
    .end local v0    # "out":Lgnu/mapping/OutPort;
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "out":Lgnu/mapping/OutPort;
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 136
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 139
    :cond_1
    move-object v4, v1

    :try_start_0
    array-length v4, v4

    const/4 v5, 0x4

    add-int/lit8 v4, v4, -0x4

    new-array v4, v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 140
    .local v2, "args":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move-object v4, v2

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_3

    .line 142
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Lkawa/Shell;->portArg:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    .line 143
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    aput-object v6, v4, v5

    goto :goto_1

    .line 144
    :cond_3
    sget-object v4, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 145
    .local v3, "format":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Lgnu/lists/AbstractFormat;

    if-eqz v4, :cond_4

    .line 147
    move-object v4, v0

    move-object v5, v3

    check-cast v5, Lgnu/lists/AbstractFormat;

    iput-object v5, v4, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 148
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 151
    :cond_4
    move-object v4, v3

    check-cast v4, Lgnu/lists/Consumer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 153
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v3    # "format":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 155
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot get output-format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' - caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    .locals 8

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, p2

    .local v2, "perr":Lgnu/mapping/OutPort;
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/WrongArguments;

    if-eqz v4, :cond_1

    .line 310
    move-object v4, v0

    check-cast v4, Lgnu/mapping/WrongArguments;

    move-object v3, v4

    .line 311
    .local v3, "e":Lgnu/mapping/WrongArguments;
    move-object v4, v1

    move-object v5, v2

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 312
    move-object v4, v3

    iget-object v4, v4, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 313
    move-object v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget-object v6, v6, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 314
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/WrongArguments;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 315
    .line 347
    .end local v3    # "e":Lgnu/mapping/WrongArguments;
    :goto_0
    return-void

    .line 316
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/ClassCastException;

    if-eqz v4, :cond_2

    .line 318
    move-object v4, v1

    move-object v5, v2

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 319
    move-object v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid parameter, was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 320
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 335
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Lgnu/text/SyntaxException;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Lgnu/text/SyntaxException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v3, v5

    .local v3, "se":Lgnu/text/SyntaxException;
    invoke-virtual {v4}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_3

    .line 338
    move-object v4, v3

    move-object v5, v2

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Lgnu/text/SyntaxException;->printAll(Ljava/io/PrintWriter;I)V

    .line 339
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/text/SyntaxException;->clear()V

    goto :goto_0

    .line 343
    .end local v3    # "se":Lgnu/text/SyntaxException;
    :cond_3
    move-object v4, v1

    move-object v5, v2

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 344
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 25

    .prologue
    .line 218
    move-object/from16 v2, p0

    .local v2, "language":Lgnu/expr/Language;
    move-object/from16 v3, p1

    .local v3, "env":Lgnu/mapping/Environment;
    move-object/from16 v4, p2

    .local v4, "inp":Lgnu/mapping/InPort;
    move-object/from16 v5, p3

    .local v5, "out":Lgnu/lists/Consumer;
    move-object/from16 v6, p4

    .local v6, "perr":Lgnu/mapping/OutPort;
    move-object/from16 v7, p5

    .local v7, "url":Ljava/net/URL;
    move-object/from16 v8, p6

    .local v8, "messages":Lgnu/text/SourceMessages;
    move-object/from16 v19, v2

    invoke-static/range {v19 .. v19}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v19

    move-object/from16 v9, v19

    .line 219
    .local v9, "saveLanguage":Lgnu/expr/Language;
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    invoke-virtual/range {v19 .. v21}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v19

    move-object/from16 v10, v19

    .line 222
    .local v10, "lexer":Lgnu/text/Lexer;
    move-object/from16 v19, v6

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    :goto_0
    move/from16 v11, v19

    .line 223
    .local v11, "interactive":Z
    move-object/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Lgnu/text/Lexer;->setInteractive(Z)V

    .line 224
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v19

    move-object/from16 v12, v19

    .line 225
    .local v12, "ctx":Lgnu/mapping/CallContext;
    const/16 v19, 0x0

    move-object/from16 v13, v19

    .line 226
    .local v13, "saveConsumer":Lgnu/lists/Consumer;
    move-object/from16 v19, v5

    if-eqz v19, :cond_0

    .line 228
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 229
    move-object/from16 v19, v12

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 233
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    move-object/from16 v14, v19

    .line 234
    .local v14, "thread":Ljava/lang/Thread;
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    move-object/from16 v15, v19

    .line 238
    .local v15, "parentLoader":Ljava/lang/ClassLoader;
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 239
    move-object/from16 v19, v14

    new-instance v20, Lgnu/bytecode/ArrayClassLoader;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v15

    invoke-direct/range {v21 .. v22}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 249
    .end local v14    # "thread":Ljava/lang/Thread;
    .end local v15    # "parentLoader":Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    const/16 v19, 0x7

    move/from16 v14, v19

    .line 252
    .local v14, "opts":I
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v14

    const/16 v22, 0x0

    :try_start_1
    invoke-virtual/range {v19 .. v22}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v19

    move-object/from16 v15, v19

    .line 254
    .local v15, "comp":Lgnu/expr/Compilation;
    move/from16 v19, v11

    if-eqz v19, :cond_4

    .line 255
    move-object/from16 v19, v8

    move-object/from16 v20, v6

    const/16 v21, 0x14

    invoke-virtual/range {v19 .. v21}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    move/from16 v16, v19

    .line 260
    .local v16, "sawError":Z
    :goto_2
    move-object/from16 v19, v15

    if-nez v19, :cond_7

    .line 261
    .line 298
    :goto_3
    move-object/from16 v19, v5

    if-eqz v19, :cond_2

    .line 299
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_2
    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 301
    .line 302
    const/16 v19, 0x0

    move-object/from16 v2, v19

    .end local v2    # "language":Lgnu/expr/Language;
    .end local v15    # "comp":Lgnu/expr/Compilation;
    .end local v16    # "sawError":Z
    :goto_4
    return-object v2

    .line 222
    .end local v11    # "interactive":Z
    .end local v12    # "ctx":Lgnu/mapping/CallContext;
    .end local v13    # "saveConsumer":Lgnu/lists/Consumer;
    .end local v14    # "opts":I
    .restart local v2    # "language":Lgnu/expr/Language;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 241
    .restart local v11    # "interactive":Z
    .restart local v12    # "ctx":Lgnu/mapping/CallContext;
    .restart local v13    # "saveConsumer":Lgnu/lists/Consumer;
    :catch_0
    move-exception v19

    move-object/from16 v14, v19

    goto :goto_1

    .line 256
    .restart local v14    # "opts":I
    .restart local v15    # "comp":Lgnu/expr/Compilation;
    :cond_4
    move-object/from16 v19, v8

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 257
    new-instance v19, Lgnu/text/SyntaxException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v19
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .end local v15    # "comp":Lgnu/expr/Compilation;
    :catch_1
    move-exception v19

    move-object/from16 v15, v19

    .line 290
    .local v15, "e":Ljava/lang/Throwable;
    move/from16 v19, v11

    if-nez v19, :cond_f

    .line 291
    move-object/from16 v19, v15

    move-object/from16 v16, v19

    .line 298
    move-object/from16 v19, v5

    if-eqz v19, :cond_5

    .line 299
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_5
    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    move-object/from16 v19, v16

    move-object/from16 v2, v19

    goto :goto_4

    .line 259
    .local v15, "comp":Lgnu/expr/Compilation;
    :cond_6
    const/16 v19, 0x0

    move/from16 v16, v19

    .restart local v16    # "sawError":Z
    goto :goto_2

    .line 262
    :cond_7
    move/from16 v19, v16

    if-eqz v19, :cond_8

    .line 263
    goto/16 :goto_1

    .line 264
    :cond_8
    move-object/from16 v19, v15

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "atInteractiveLevel$"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lgnu/expr/ModuleExp;->interactiveCounter:I

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v24, v21

    move/from16 v21, v24

    move/from16 v22, v24

    sput v22, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 271
    :cond_9
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/InPort;->read()I

    move-result v19

    move/from16 v17, v19

    .line 272
    .local v17, "ch":I
    move/from16 v19, v17

    if-ltz v19, :cond_a

    move/from16 v19, v17

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move/from16 v19, v17

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 273
    .line 281
    :cond_a
    :goto_5
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v15

    move-object/from16 v22, v7

    move-object/from16 v23, v6

    invoke-static/range {v19 .. v23}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 282
    goto/16 :goto_1

    .line 274
    :cond_b
    move/from16 v19, v17

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    move/from16 v19, v17

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 276
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/InPort;->unread()V

    .line 277
    goto :goto_5

    .line 283
    :cond_c
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/io/Writer;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 284
    move-object/from16 v19, v5

    check-cast v19, Ljava/io/Writer;

    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    :cond_d
    move/from16 v19, v17

    if-gez v19, :cond_e

    .line 286
    goto/16 :goto_3

    .line 293
    .line 294
    .end local v15    # "comp":Lgnu/expr/Compilation;
    .end local v16    # "sawError":Z
    .end local v17    # "ch":I
    :cond_e
    :goto_6
    goto/16 :goto_1

    .line 292
    .local v15, "e":Ljava/lang/Throwable;
    :cond_f
    move-object/from16 v19, v15

    move-object/from16 v20, v8

    move-object/from16 v21, v6

    :try_start_4
    invoke-static/range {v19 .. v21}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 298
    .end local v15    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v19

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    if-eqz v19, :cond_10

    .line 299
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_10
    move-object/from16 v19, v9

    invoke-static/range {v19 .. v19}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    move-object/from16 v19, v18

    throw v19
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 17

    .prologue
    .line 188
    move-object/from16 v0, p0

    .local v0, "language":Lgnu/expr/Language;
    move-object/from16 v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object/from16 v2, p2

    .local v2, "inp":Lgnu/mapping/InPort;
    move-object/from16 v3, p3

    .local v3, "pout":Lgnu/mapping/OutPort;
    move-object/from16 v4, p4

    .local v4, "perr":Lgnu/mapping/OutPort;
    move-object/from16 v5, p5

    .local v5, "messages":Lgnu/text/SourceMessages;
    const/4 v10, 0x0

    move-object v7, v10

    .line 189
    .local v7, "saveFormat":Lgnu/lists/AbstractFormat;
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 190
    move-object v10, v3

    iget-object v10, v10, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v7, v10

    .line 191
    :cond_0
    move-object v10, v3

    invoke-static {v10}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v10

    move-object v6, v10

    .line 194
    .local v6, "out":Lgnu/lists/Consumer;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v6

    move-object v14, v4

    const/4 v15, 0x0

    move-object/from16 v16, v5

    :try_start_0
    invoke-static/range {v10 .. v16}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v8, v10

    .line 198
    move-object v10, v3

    if-eqz v10, :cond_1

    .line 199
    move-object v10, v3

    move-object v11, v7

    iput-object v11, v10, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_1
    move-object v10, v8

    move-object v0, v10

    .end local v0    # "language":Lgnu/expr/Language;
    return-object v0

    .line 198
    .restart local v0    # "language":Lgnu/expr/Language;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v3

    if-eqz v10, :cond_2

    .line 199
    move-object v10, v3

    move-object v11, v7

    iput-object v11, v10, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_2
    move-object v10, v9

    throw v10
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z
    .locals 13

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "language":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v6

    move-object v2, v6

    .line 163
    .local v2, "inp":Lgnu/mapping/InPort;
    new-instance v6, Lgnu/text/SourceMessages;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lgnu/text/SourceMessages;-><init>()V

    move-object v3, v6

    .line 165
    .local v3, "messages":Lgnu/text/SourceMessages;
    move-object v6, v2

    instance-of v6, v6, Lgnu/mapping/TtyInPort;

    if-eqz v6, :cond_1

    .line 167
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/Language;->getPrompter()Lgnu/mapping/Procedure;

    move-result-object v6

    move-object v5, v6

    .line 168
    .local v5, "prompter":Lgnu/mapping/Procedure;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 169
    move-object v6, v2

    check-cast v6, Lgnu/mapping/TtyInPort;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 170
    :cond_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v6

    move-object v4, v6

    .line 175
    .end local v5    # "prompter":Lgnu/mapping/Procedure;
    .local v4, "perr":Lgnu/mapping/OutPort;
    :goto_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v9

    move-object v10, v4

    move-object v11, v3

    invoke-static/range {v6 .. v11}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v5, v6

    .line 177
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v6, v5

    if-nez v6, :cond_2

    .line 178
    const/4 v6, 0x1

    move v0, v6

    .line 180
    .end local v0    # "language":Lgnu/expr/Language;
    :goto_1
    return v0

    .line 173
    .end local v4    # "perr":Lgnu/mapping/OutPort;
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "language":Lgnu/expr/Language;
    :cond_1
    const/4 v6, 0x0

    move-object v4, v6

    .restart local v4    # "perr":Lgnu/mapping/OutPort;
    goto :goto_0

    .line 179
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_2
    move-object v6, v5

    move-object v7, v3

    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 180
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;)Z
    .locals 16

    .prologue
    .line 207
    move-object/from16 v0, p0

    .local v0, "language":Lgnu/expr/Language;
    move-object/from16 v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object/from16 v2, p2

    .local v2, "inp":Lgnu/mapping/InPort;
    move-object/from16 v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object/from16 v4, p4

    .local v4, "perr":Lgnu/mapping/OutPort;
    move-object/from16 v5, p5

    .local v5, "url":Ljava/net/URL;
    new-instance v8, Lgnu/text/SourceMessages;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lgnu/text/SourceMessages;-><init>()V

    move-object v6, v8

    .line 208
    .local v6, "messages":Lgnu/text/SourceMessages;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static/range {v8 .. v14}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v8

    move-object v7, v8

    .line 209
    .local v7, "ex":Ljava/lang/Throwable;
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 210
    move-object v8, v7

    move-object v9, v6

    move-object v10, v4

    invoke-static {v8, v9, v10}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 211
    :cond_0
    move-object v8, v7

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v0, v8

    .end local v0    # "language":Lgnu/expr/Language;
    return v0

    .restart local v0    # "language":Lgnu/expr/Language;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static final runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 468
    move-object/from16 v1, p0

    .local v1, "fs":Ljava/io/InputStream;
    move-object/from16 v2, p1

    .local v2, "path":Lgnu/text/Path;
    move-object/from16 v3, p2

    .local v3, "env":Lgnu/mapping/Environment;
    move/from16 v4, p3

    .local v4, "lineByLine":Z
    move/from16 v5, p4

    .local v5, "skipLines":I
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 469
    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v1

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v1, v17

    .line 470
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v17

    move-object/from16 v6, v17

    .line 471
    .local v6, "language":Lgnu/expr/Language;
    sget-object v17, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/text/Path;

    move-object/from16 v7, v17

    .line 474
    .local v7, "savePath":Lgnu/text/Path;
    :try_start_0
    sget-object v17, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 475
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    invoke-static/range {v17 .. v20}, Lkawa/Shell;->checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v17

    move-object/from16 v8, v17

    .line 476
    .local v8, "cmodule":Lgnu/expr/CompiledModule;
    move-object/from16 v17, v8

    if-nez v17, :cond_4

    .line 478
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-static/range {v17 .. v18}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v17

    move-object/from16 v9, v17

    .line 479
    .local v9, "src":Lgnu/mapping/InPort;
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move/from16 v17, v5

    if-ltz v17, :cond_1

    .line 480
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/InPort;->skipRestOfLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 483
    :cond_1
    :try_start_1
    new-instance v17, Lgnu/text/SourceMessages;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Lgnu/text/SourceMessages;-><init>()V

    move-object/from16 v10, v17

    .line 484
    .local v10, "messages":Lgnu/text/SourceMessages;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v17

    move-object/from16 v11, v17

    .line 485
    .local v11, "url":Ljava/net/URL;
    move/from16 v17, v4

    if-eqz v17, :cond_6

    .line 487
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v17

    move/from16 v12, v17

    .line 488
    .local v12, "print":Z
    move/from16 v17, v12

    if-eqz v17, :cond_2

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v17

    :goto_1
    move-object/from16 v13, v17

    .line 490
    .local v13, "out":Lgnu/lists/Consumer;
    move-object/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    const/16 v21, 0x0

    move-object/from16 v22, v11

    move-object/from16 v23, v10

    invoke-static/range {v17 .. v23}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v14, v17

    .line 492
    .local v14, "ex":Ljava/lang/Throwable;
    move-object/from16 v17, v14

    if-eqz v17, :cond_3

    .line 493
    move-object/from16 v17, v14

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .end local v10    # "messages":Lgnu/text/SourceMessages;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "print":Z
    .end local v13    # "out":Lgnu/lists/Consumer;
    .end local v14    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v17

    move-object/from16 v15, v17

    move-object/from16 v17, v9

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/InPort;->close()V

    move-object/from16 v17, v15

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    .end local v8    # "cmodule":Lgnu/expr/CompiledModule;
    .end local v9    # "src":Lgnu/mapping/InPort;
    :catchall_1
    move-exception v17

    move-object/from16 v16, v17

    sget-object v17, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v17, v16

    throw v17

    .line 488
    .restart local v8    # "cmodule":Lgnu/expr/CompiledModule;
    .restart local v9    # "src":Lgnu/mapping/InPort;
    .restart local v10    # "messages":Lgnu/text/SourceMessages;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "print":Z
    :cond_2
    :try_start_3
    new-instance v17, Lgnu/lists/VoidConsumer;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Lgnu/lists/VoidConsumer;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 494
    .line 505
    .end local v12    # "print":Z
    :cond_3
    move-object/from16 v17, v9

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/InPort;->close()V

    .line 506
    .line 508
    .end local v9    # "src":Lgnu/mapping/InPort;
    .end local v10    # "messages":Lgnu/text/SourceMessages;
    .end local v11    # "url":Ljava/net/URL;
    :cond_4
    move-object/from16 v17, v8

    if-eqz v17, :cond_5

    .line 509
    move-object/from16 v17, v8

    move-object/from16 v18, v3

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 513
    :cond_5
    sget-object v17, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 514
    .line 515
    const/16 v17, 0x1

    move/from16 v1, v17

    .end local v1    # "fs":Ljava/io/InputStream;
    :goto_2
    return v1

    .line 497
    .restart local v1    # "fs":Ljava/io/InputStream;
    .restart local v9    # "src":Lgnu/mapping/InPort;
    .restart local v10    # "messages":Lgnu/text/SourceMessages;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_6
    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v11

    move-object/from16 v20, v6

    move-object/from16 v21, v10

    :try_start_5
    invoke-static/range {v17 .. v21}, Lkawa/Shell;->compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;

    move-result-object v17

    move-object/from16 v8, v17

    .line 498
    move-object/from16 v17, v10

    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v18

    const/16 v19, 0x14

    invoke-virtual/range {v17 .. v19}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 499
    move-object/from16 v17, v8

    if-nez v17, :cond_3

    .line 500
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 505
    move-object/from16 v17, v9

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/InPort;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 513
    sget-object v17, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move/from16 v17, v12

    move/from16 v1, v17

    goto :goto_2
.end method

.method public static runFileOrClass(Ljava/lang/String;ZI)Z
    .locals 13

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "fname":Ljava/lang/String;
    move v1, p1

    .local v1, "lineByLine":Z
    move v2, p2

    .local v2, "skipLines":I
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v7

    move-object v3, v7

    .line 415
    .local v3, "language":Lgnu/expr/Language;
    move-object v7, v0

    :try_start_0
    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 417
    const-string/jumbo v7, "/dev/stdin"

    invoke-static {v7}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    move-object v4, v7

    .line 418
    .local v4, "path":Lgnu/text/Path;
    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v7

    .line 427
    .local v5, "fs":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v7

    move-object v6, v7

    .line 428
    .local v6, "env":Lgnu/mapping/Environment;
    move-object v7, v5

    move-object v8, v4

    move-object v9, v6

    move v10, v1

    move v11, v2

    invoke-static {v7, v8, v9, v10, v11}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    move v0, v7

    .line 457
    .end local v0    # "fname":Ljava/lang/String;
    .end local v4    # "path":Lgnu/text/Path;
    .end local v5    # "fs":Ljava/io/InputStream;
    .end local v6    # "env":Lgnu/mapping/Environment;
    :goto_1
    return v0

    .line 422
    .restart local v0    # "fname":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    :try_start_2
    invoke-static {v7}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    move-object v4, v7

    .line 423
    .restart local v4    # "path":Lgnu/text/Path;
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "fs":Ljava/io/InputStream;
    goto :goto_0

    .line 430
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 432
    .local v6, "e":Ljava/lang/Throwable;
    move-object v7, v6

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 433
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 436
    .end local v4    # "path":Lgnu/text/Path;
    .end local v5    # "fs":Ljava/io/InputStream;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 441
    .local v4, "e":Ljava/lang/Throwable;
    move-object v7, v0

    :try_start_3
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    move-object v5, v7

    .line 447
    .line 450
    .local v5, "clas":Ljava/lang/Class;
    move-object v7, v5

    move-object v8, v3

    :try_start_4
    invoke-static {v7, v8}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v7

    move-object v6, v7

    .line 451
    .local v6, "cmodule":Lgnu/expr/CompiledModule;
    move-object v7, v6

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v8

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 452
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 443
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "cmodule":Lgnu/expr/CompiledModule;
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 445
    .local v6, "ex":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    .line 454
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "clas":Ljava/lang/Class;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 456
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 457
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method public static setDefaultFormat(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 94
    move-object v5, v0

    sput-object v5, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    .line 95
    const/4 v5, 0x0

    move v1, v5

    .line 97
    .local v1, "i":I
    :goto_0
    sget-object v5, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    move v6, v1

    aget-object v5, v5, v6

    move-object v2, v5

    .line 98
    .local v2, "info":[Ljava/lang/Object;
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v3, v5

    .line 99
    .local v3, "iname":Ljava/lang/Object;
    move-object v5, v3

    if-nez v5, :cond_1

    .line 101
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kawa: unknown output format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    move-object v5, v3

    move-object v6, v0

    if-ne v5, v6, :cond_0

    .line 106
    move-object v5, v2

    sput-object v5, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 109
    move-object v5, v2

    const/4 v6, 0x1

    :try_start_0
    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 110
    .local v4, "formatClass":Ljava/lang/Class;
    move-object v5, v4

    move-object v6, v2

    const/4 v7, 0x2

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/String;

    move-object v7, v2

    const/4 v8, 0x3

    aget-object v7, v7, v8

    check-cast v7, [Ljava/lang/Class;

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 122
    .end local v4    # "formatClass":Ljava/lang/Class;
    :goto_1
    sget-object v5, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string/jumbo v6, "gnu.lists.VoidConsumer"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 123
    const/4 v5, 0x1

    invoke-static {v5}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 124
    :cond_2
    return-void

    .line 114
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 116
    .local v4, "ex":Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kawa:  caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " while looking for format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 119
    goto :goto_1
.end method
