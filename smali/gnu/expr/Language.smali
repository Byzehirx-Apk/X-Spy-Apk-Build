.class public abstract Lgnu/expr/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final FUNCTION_NAMESPACE:I = 0x2

.field public static final NAMESPACE_PREFIX_NAMESPACE:I = 0x4

.field public static final PARSE_CURRENT_NAMES:I = 0x2

.field public static final PARSE_EXPLICIT:I = 0x40

.field public static final PARSE_FOR_APPLET:I = 0x10

.field public static final PARSE_FOR_EVAL:I = 0x3

.field public static final PARSE_FOR_SERVLET:I = 0x20

.field public static final PARSE_IMMEDIATE:I = 0x1

.field public static final PARSE_ONE_LINE:I = 0x4

.field public static final PARSE_PROLOG:I = 0x8

.field public static final VALUE_NAMESPACE:I = 0x1

.field protected static final current:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Lgnu/expr/Language;",
            ">;"
        }
    .end annotation
.end field

.field static envCounter:I

.field protected static env_counter:I

.field protected static global:Lgnu/expr/Language;

.field static languages:[[Ljava/lang/String;

.field public static requirePedantic:Z


# instance fields
.field protected environ:Lgnu/mapping/Environment;

.field protected userEnv:Lgnu/mapping/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 26
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    invoke-direct {v1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    .line 36
    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

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

    const-string/jumbo v6, ".scm"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ".sc"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "kawa.standard.Scheme"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "krl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, ".krl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.brl.BRL"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "brl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, ".brl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.kawa.brl.BRL"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "emacs"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "elisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "emacs-lisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, ".el"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string/jumbo v6, "gnu.jemacs.lang.ELisp"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "xquery"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, ".xquery"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ".xq"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, ".xql"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string/jumbo v6, "gnu.xquery.lang.XQuery"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "q2"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, ".q2"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "gnu.q2.lang.Q2"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "xslt"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "xsl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ".xsl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "gnu.kawa.xslt.XSLT"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

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

    const-string/jumbo v6, "common-lisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "clisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "lisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string/jumbo v6, ".lisp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    const-string/jumbo v6, ".lsp"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x6

    const-string/jumbo v6, ".cl"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    const-string/jumbo v6, "gnu.commonlisp.lang.CommonLisp"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    sput-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 954
    const/4 v0, 0x0

    sput v0, Lgnu/expr/Language;->env_counter:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Lgnu/expr/KawaConvert;->getInstance()Lgnu/lists/Convert;

    move-result-object v1

    invoke-static {v1}, Lgnu/lists/Convert;->setInstance(Lgnu/lists/Convert;)V

    .line 224
    return-void
.end method

.method public static detect(Lgnu/mapping/InPort;)Lgnu/expr/Language;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "port":Lgnu/mapping/InPort;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 128
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lgnu/mapping/InPort;->mark(I)V

    .line 129
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/InPort;->readLine(Ljava/lang/StringBuffer;C)V

    .line 130
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/InPort;->reset()V

    .line 131
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "port":Lgnu/mapping/InPort;
    return-object v0
.end method

.method public static detect(Ljava/io/InputStream;)Lgnu/expr/Language;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const/4 v3, 0x0

    move-object v0, v3

    .line 118
    .end local v0    # "in":Ljava/io/InputStream;
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 106
    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 107
    .restart local v1    # "sbuf":Ljava/lang/StringBuffer;
    move-object v3, v0

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 110
    :goto_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_2

    .line 111
    .line 117
    :cond_1
    :goto_2
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 118
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 112
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v2, v3

    .line 113
    .local v2, "c":I
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object v3, v1

    move v4, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 116
    goto :goto_1
.end method

.method public static detect(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 10

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "line":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 142
    .local v1, "str":Ljava/lang/String;
    move-object v7, v1

    const-string/jumbo v8, "kawa:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 143
    .local v2, "k":I
    move v7, v2

    if-ltz v7, :cond_1

    .line 145
    move v7, v2

    const/4 v8, 0x5

    add-int/lit8 v7, v7, 0x5

    move v3, v7

    .line 146
    .local v3, "i":I
    move v7, v3

    move v4, v7

    .line 148
    .local v4, "j":I
    :goto_0
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_0
    move v7, v4

    move v8, v3

    if-le v7, v8, :cond_1

    .line 152
    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 153
    .local v5, "w":Ljava/lang/String;
    move-object v7, v5

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v6, v7

    .line 154
    .local v6, "lang":Lgnu/expr/Language;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 155
    move-object v7, v6

    move-object v0, v7

    .line 174
    .end local v0    # "line":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "w":Ljava/lang/String;
    .end local v6    # "lang":Lgnu/expr/Language;
    :goto_1
    return-object v0

    .line 159
    .restart local v0    # "line":Ljava/lang/String;
    :cond_1
    move-object v7, v1

    const-string/jumbo v8, "-*- scheme -*-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 160
    const-string/jumbo v7, "scheme"

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 161
    :cond_2
    move-object v7, v1

    const-string/jumbo v8, "-*- xquery -*-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 162
    const-string/jumbo v7, "xquery"

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 163
    :cond_3
    move-object v7, v1

    const-string/jumbo v8, "-*- emacs-lisp -*-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 164
    const-string/jumbo v7, "elisp"

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 165
    :cond_4
    move-object v7, v1

    const-string/jumbo v8, "-*- common-lisp -*-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    move-object v7, v1

    const-string/jumbo v8, "-*- lisp -*-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_6

    .line 167
    :cond_5
    const-string/jumbo v7, "common-lisp"

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 169
    :cond_6
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_7

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_8

    :cond_7
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-lt v7, v8, :cond_9

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "xquery "

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 171
    :cond_8
    const-string/jumbo v7, "xquery"

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_1

    .line 172
    :cond_9
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_a

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_a

    .line 173
    const-string/jumbo v7, "scheme"

    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_1

    .line 174
    :cond_a
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method public static getDefaultLanguage()Lgnu/expr/Language;
    .locals 2

    .prologue
    .line 32
    sget-object v1, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Language;

    move-object v0, v1

    .line 33
    .local v0, "lang":Lgnu/expr/Language;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "lang":Lgnu/expr/Language;
    return-object v0

    .restart local v0    # "lang":Lgnu/expr/Language;
    :cond_0
    sget-object v1, Lgnu/expr/Language;->global:Lgnu/expr/Language;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 10

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v8, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v8, v8

    move v1, v8

    .line 194
    .local v1, "langCount":I
    const/4 v8, 0x0

    move v2, v8

    .local v2, "i":I
    :goto_0
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_3

    .line 196
    sget-object v8, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    move v9, v2

    aget-object v8, v8, v9

    move-object v3, v8

    .line 197
    .local v3, "names":[Ljava/lang/String;
    move-object v8, v3

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 198
    .local v4, "nameCount":I
    move v8, v4

    move v5, v8

    .local v5, "j":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    move v8, v5

    if-ltz v8, :cond_2

    .line 200
    move-object v8, v0

    if-eqz v8, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 205
    :cond_1
    move-object v8, v3

    move v9, v4

    :try_start_0
    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v6, v8

    .line 213
    .line 214
    .local v6, "langClass":Ljava/lang/Class;
    move-object v8, v3

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v6

    invoke-static {v8, v9}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;

    move-result-object v8

    move-object v0, v8

    .line 218
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "nameCount":I
    .end local v5    # "j":I
    .end local v6    # "langClass":Ljava/lang/Class;
    :goto_1
    return-object v0

    .line 207
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v4    # "nameCount":I
    .restart local v5    # "j":I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 194
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "nameCount":I
    .end local v5    # "j":I
    :cond_3
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;
    .locals 11

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "langName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "langClass":Ljava/lang/Class;
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v6

    .line 234
    .local v3, "args":[Ljava/lang/Class;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 237
    .local v4, "capitalizedName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Instance"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 238
    .local v5, "methodName":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 244
    .line 245
    .end local v4    # "capitalizedName":Ljava/lang/String;
    .end local v5    # "methodName":Ljava/lang/String;
    .local v2, "method":Ljava/lang/reflect/Method;
    :goto_0
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_2
    sget-object v8, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Language;

    move-object v0, v6

    .end local v0    # "langName":Ljava/lang/String;
    return-object v0

    .line 240
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "langName":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 242
    .local v4, "ex":Ljava/lang/Exception;
    move-object v6, v1

    const-string/jumbo v7, "getInstance"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v2, v6

    .restart local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 247
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "args":[Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 249
    .local v2, "ex":Ljava/lang/Exception;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 251
    move-object v6, v2

    instance-of v6, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_0

    .line 252
    move-object v6, v2

    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    move-object v3, v6

    .line 256
    .local v3, "th":Ljava/lang/Throwable;
    :goto_1
    new-instance v6, Lgnu/mapping/WrappedException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getInstance for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 254
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_0
    move-object v6, v2

    move-object v3, v6

    .restart local v3    # "th":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public static getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "filename":Ljava/lang/String;
    move-object v3, v0

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v1, v3

    .line 180
    .local v1, "dot":I
    move v3, v1

    if-lez v3, :cond_0

    .line 182
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    move-object v2, v3

    .line 183
    .local v2, "lang":Lgnu/expr/Language;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v2

    move-object v0, v3

    .line 186
    .end local v0    # "filename":Ljava/lang/String;
    .end local v2    # "lang":Lgnu/expr/Language;
    :goto_0
    return-object v0

    .restart local v0    # "filename":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static getLanguages()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    return-object v0
.end method

.method public static registerLanguage([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "langMapping":[Ljava/lang/String;
    sget-object v2, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    move-object v1, v2

    .line 93
    .local v1, "newLangs":[[Ljava/lang/String;
    sget-object v2, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    sget-object v6, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    move-object v2, v1

    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    aput-object v4, v2, v3

    .line 95
    move-object v2, v1

    sput-object v2, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static restoreCurrent(Lgnu/expr/Language;)V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "saved":Lgnu/expr/Language;
    sget-object v1, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static setCurrentLanguage(Lgnu/expr/Language;)V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "language":Lgnu/expr/Language;
    sget-object v1, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static declared-synchronized setDefaults(Lgnu/expr/Language;)V
    .locals 4

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "lang":Lgnu/expr/Language;
    const-class v3, Lgnu/expr/Language;

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    invoke-static {v1}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    .line 841
    move-object v1, v0

    sput-object v1, Lgnu/expr/Language;->global:Lgnu/expr/Language;

    .line 845
    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 846
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v1}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_0
    monitor-exit v3

    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "lang":Lgnu/expr/Language;
    throw v0
.end method

.method public static setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "language":Lgnu/expr/Language;
    sget-object v2, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v2}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Language;

    move-object v1, v2

    .line 46
    .local v1, "save":Lgnu/expr/Language;
    sget-object v2, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "language":Lgnu/expr/Language;
    return-object v0
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 576
    .local v1, "t":Lgnu/bytecode/Type;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 577
    const/4 v2, 0x0

    move-object v0, v2

    .line 584
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "t":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 578
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "t":Lgnu/bytecode/Type;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    move-object v1, v2

    .line 584
    :goto_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 580
    .end local v1    # "t":Lgnu/bytecode/Type;
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lgnu/bytecode/Type;->isValidJavaTypeName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    move-object v2, v0

    invoke-static {v2}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "t":Lgnu/bytecode/Type;
    goto :goto_1

    .line 583
    .end local v1    # "t":Lgnu/bytecode/Type;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "t1":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "t2":Lgnu/bytecode/Type;
    move-object v4, v0

    sget-object v5, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_0

    .line 693
    sget-object v4, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    move-object v0, v4

    .line 694
    :cond_0
    move-object v4, v1

    sget-object v5, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_1

    .line 695
    sget-object v4, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    move-object v1, v4

    .line 696
    :cond_1
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 697
    move-object v4, v0

    move-object v0, v4

    .line 716
    .end local v0    # "t1":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 698
    .restart local v0    # "t1":Lgnu/bytecode/Type;
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_c

    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/PrimType;

    if-eqz v4, :cond_c

    .line 700
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 701
    .local v2, "sig1":C
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 702
    .local v3, "sig2":C
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_3

    .line 703
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 704
    :cond_3
    move v4, v2

    const/16 v5, 0x42

    if-eq v4, v5, :cond_4

    move v4, v2

    const/16 v5, 0x53

    if-eq v4, v5, :cond_4

    move v4, v2

    const/16 v5, 0x49

    if-ne v4, v5, :cond_6

    :cond_4
    move v4, v3

    const/16 v5, 0x49

    if-eq v4, v5, :cond_5

    move v4, v3

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_6

    .line 705
    :cond_5
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 706
    :cond_6
    move v4, v3

    const/16 v5, 0x42

    if-eq v4, v5, :cond_7

    move v4, v3

    const/16 v5, 0x53

    if-eq v4, v5, :cond_7

    move v4, v3

    const/16 v5, 0x49

    if-ne v4, v5, :cond_9

    :cond_7
    move v4, v2

    const/16 v5, 0x49

    if-eq v4, v5, :cond_8

    move v4, v2

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_9

    .line 707
    :cond_8
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 708
    :cond_9
    move v4, v2

    const/16 v5, 0x46

    if-ne v4, v5, :cond_a

    move v4, v3

    const/16 v5, 0x44

    if-ne v4, v5, :cond_a

    .line 709
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 710
    :cond_a
    move v4, v3

    const/16 v5, 0x46

    if-ne v4, v5, :cond_b

    move v4, v2

    const/16 v5, 0x44

    if-ne v4, v5, :cond_b

    .line 711
    move-object v4, v0

    move-object v0, v4

    goto :goto_0

    .line 712
    :cond_b
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v4

    goto :goto_0

    .line 716
    .end local v2    # "sig1":C
    .end local v3    # "sig2":C
    :cond_c
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 6

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "spec":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v2, v3

    .line 617
    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Lgnu/bytecode/Type;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    move-object v3, v2

    goto :goto_0
.end method

.method public booleanObject(Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move v1, p1

    .local v1, "b":Z
    move v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .locals 19

    .prologue
    .line 721
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/expr/Language;
    move-object/from16 v2, p1

    .local v2, "mod":Lgnu/expr/ModuleExp;
    move-object/from16 v3, p2

    .local v3, "fvalue":Ljava/lang/Object;
    move-object/from16 v4, p3

    .local v4, "fld":Lgnu/bytecode/Field;
    move-object v15, v4

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v5, v15

    .line 722
    .local v5, "fname":Ljava/lang/String;
    move-object v15, v4

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    move-object v6, v15

    .line 723
    .local v6, "ftype":Lgnu/bytecode/Type;
    move-object v15, v6

    sget-object v16, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v15

    move v7, v15

    .line 728
    .local v7, "isAlias":Z
    const/4 v15, 0x0

    move v10, v15

    .line 729
    .local v10, "externalAccess":Z
    move-object v15, v4

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v15

    const/16 v16, 0x10

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    :goto_0
    move v11, v15

    .line 730
    .local v11, "isFinal":Z
    move-object v15, v5

    const-string/jumbo v16, "$instance"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    move/from16 v18, v15

    move/from16 v15, v18

    move/from16 v16, v18

    move/from16 v9, v16

    .local v9, "isImportedInstance":Z
    if-eqz v15, :cond_7

    .line 731
    move-object v15, v5

    move-object v8, v15

    .line 744
    :goto_1
    move-object v15, v8

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 746
    move-object v15, v2

    invoke-virtual {v15}, Lgnu/expr/ModuleExp;->getNamespaceUri()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 747
    .local v12, "uri":Ljava/lang/String;
    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    move-object v13, v15

    .line 749
    .local v13, "sname":Ljava/lang/String;
    move-object v15, v12

    if-nez v15, :cond_a

    .line 750
    move-object v15, v13

    invoke-static {v15}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v15

    move-object v8, v15

    .line 754
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "sname":Ljava/lang/String;
    :cond_0
    :goto_2
    move v15, v7

    if-eqz v15, :cond_b

    sget-object v15, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_3
    move-object v12, v15

    .line 756
    .local v12, "dtype":Lgnu/bytecode/Type;
    move-object v15, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v15

    move-object v13, v15

    .line 757
    .local v13, "fdecl":Lgnu/expr/Declaration;
    move-object v15, v4

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v15

    const/16 v16, 0x8

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_4
    move v14, v15

    .line 758
    .local v14, "isStatic":Z
    move v15, v7

    if-eqz v15, :cond_d

    .line 760
    move-object v15, v13

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 761
    move-object v15, v6

    instance-of v15, v15, Lgnu/bytecode/ClassType;

    if-eqz v15, :cond_1

    move-object v15, v6

    check-cast v15, Lgnu/bytecode/ClassType;

    const-string/jumbo v16, "gnu.mapping.ThreadLocation"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 763
    move-object v15, v13

    const-wide/32 v16, 0x10000000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 772
    :cond_1
    :goto_5
    move v15, v14

    if-eqz v15, :cond_2

    .line 773
    move-object v15, v13

    const-wide/16 v16, 0x800

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 774
    :cond_2
    move-object v15, v13

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 775
    move v15, v11

    if-eqz v15, :cond_3

    move v15, v7

    if-nez v15, :cond_3

    .line 776
    move-object v15, v13

    const-wide/16 v16, 0x4000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 777
    :cond_3
    move v15, v9

    if-eqz v15, :cond_4

    .line 778
    move-object v15, v13

    const-wide/32 v16, 0x40000000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 779
    :cond_4
    move-object v15, v13

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 780
    move v15, v10

    if-eqz v15, :cond_5

    .line 781
    move-object v15, v13

    const-wide/32 v16, 0x80020

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 782
    :cond_5
    move-object v15, v13

    move-object v1, v15

    .end local v1    # "this":Lgnu/expr/Language;
    return-object v1

    .line 729
    .end local v9    # "isImportedInstance":Z
    .end local v11    # "isFinal":Z
    .end local v12    # "dtype":Lgnu/bytecode/Type;
    .end local v13    # "fdecl":Lgnu/expr/Declaration;
    .end local v14    # "isStatic":Z
    .restart local v1    # "this":Lgnu/expr/Language;
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 732
    .restart local v9    # "isImportedInstance":Z
    .restart local v11    # "isFinal":Z
    :cond_7
    move v15, v11

    if-eqz v15, :cond_8

    move-object v15, v3

    instance-of v15, v15, Lgnu/mapping/Named;

    if-eqz v15, :cond_8

    .line 733
    move-object v15, v3

    check-cast v15, Lgnu/mapping/Named;

    invoke-interface {v15}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    .local v8, "fdname":Ljava/lang/Object;
    goto/16 :goto_1

    .line 737
    .end local v8    # "fdname":Ljava/lang/Object;
    :cond_8
    move-object v15, v5

    const-string/jumbo v16, "$Prvt$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 739
    const/4 v15, 0x1

    move v10, v15

    .line 740
    move-object v15, v5

    const-string/jumbo v16, "$Prvt$"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v5, v15

    .line 742
    :cond_9
    move-object v15, v5

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    move-object v8, v15

    .local v8, "fdname":Ljava/lang/String;
    goto/16 :goto_1

    .line 752
    .end local v8    # "fdname":Ljava/lang/String;
    .local v12, "uri":Ljava/lang/String;
    .local v13, "sname":Ljava/lang/String;
    :cond_a
    move-object v15, v12

    move-object/from16 v16, v13

    invoke-static/range {v15 .. v16}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v15

    move-object v8, v15

    .local v8, "fdname":Lgnu/mapping/Symbol;
    goto/16 :goto_2

    .line 754
    .end local v8    # "fdname":Lgnu/mapping/Symbol;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "sname":Ljava/lang/String;
    :cond_b
    move-object v15, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v15

    goto/16 :goto_3

    .line 757
    .local v12, "dtype":Lgnu/bytecode/Type;
    .local v13, "fdecl":Lgnu/expr/Declaration;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 765
    .restart local v14    # "isStatic":Z
    :cond_d
    move v15, v11

    if-eqz v15, :cond_1

    move-object v15, v6

    instance-of v15, v15, Lgnu/bytecode/ClassType;

    if-eqz v15, :cond_1

    .line 767
    move-object v15, v6

    sget-object v16, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 768
    move-object v15, v13

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    goto/16 :goto_5

    .line 769
    :cond_e
    move-object v15, v6

    check-cast v15, Lgnu/bytecode/ClassType;

    const-string/jumbo v16, "gnu.mapping.Namespace"

    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 770
    move-object v15, v13

    const-wide/32 v16, 0x200000

    invoke-virtual/range {v15 .. v17}, Lgnu/expr/Declaration;->setFlag(J)V

    goto/16 :goto_5
.end method

.method protected defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fname":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v4

    .line 327
    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v1

    invoke-static {v6}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fname":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_0
    move-object v4, v7

    .line 339
    .local v4, "property":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v5, v7

    .line 340
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v8, v5

    move-object v9, v4

    move-object v10, v2

    move-object v11, v3

    invoke-static {v7, v8, v9, v10, v11}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v7

    move-object v6, v7

    .line 342
    .local v6, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    .line 343
    return-void

    .line 337
    .end local v4    # "property":Ljava/lang/Object;
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "sym":Ljava/lang/String;
    move-object v2, p2

    .local v2, "p":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v3, v4

    .line 319
    .local v3, "s":Lgnu/mapping/Symbol;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public final defineFunction(Lgnu/mapping/Named;)V
    .locals 9

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Named;
    move-object v5, v1

    invoke-interface {v5}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 359
    .local v2, "name":Ljava/lang/Object;
    move-object v5, v2

    instance-of v5, v5, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lgnu/mapping/Symbol;

    :goto_0
    move-object v3, v5

    .line 361
    .local v3, "sym":Lgnu/mapping/Symbol;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_1
    move-object v4, v5

    .line 363
    .local v4, "property":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v6, v3

    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    return-void

    .line 359
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .end local v4    # "property":Ljava/lang/Object;
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    goto :goto_0

    .line 361
    .restart local v3    # "sym":Lgnu/mapping/Symbol;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public defineFunction(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "proc":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_0
    move-object v3, v4

    .line 373
    .local v3, "property":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    return-void

    .line 371
    .end local v3    # "property":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 821
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitIfNEq()V

    .line 822
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 823
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 824
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 825
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 826
    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .locals 5

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move v1, p1

    .local v1, "value":Z
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v2

    move v4, v1

    if-eqz v4, :cond_0

    sget-object v4, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    :goto_0
    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 813
    return-void

    .line 811
    :cond_0
    sget-object v4, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    goto :goto_0
.end method

.method public final eval(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v5

    move-object v2, v5

    .line 880
    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v5

    move v3, v5

    .line 883
    .local v3, "oldIndex":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V

    .line 884
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .line 886
    .restart local v0    # "this":Lgnu/expr/Language;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 888
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 889
    move-object v5, v4

    throw v5
.end method

.method public final eval(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/InPort;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/InPort;

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    new-instance v3, Lgnu/mapping/InPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public final eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Lgnu/mapping/CharArrayInPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    new-instance v7, Lgnu/text/SourceMessages;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    move-object v3, v7

    .line 939
    .local v3, "messages":Lgnu/text/SourceMessages;
    move-object v7, v0

    invoke-static {v7}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v7

    move-object v4, v7

    .line 942
    .local v4, "saveLang":Lgnu/expr/Language;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v7, v8, v9, v10}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v7

    move-object v5, v7

    .line 943
    .local v5, "comp":Lgnu/expr/Compilation;
    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v7

    move-object v8, v2

    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 947
    move-object v7, v4

    invoke-static {v7}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 948
    .line 949
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 950
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid syntax in eval form:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 947
    .end local v5    # "comp":Lgnu/expr/Compilation;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-static {v7}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    move-object v7, v6

    throw v7

    .line 952
    .restart local v5    # "comp":Lgnu/expr/Compilation;
    :cond_0
    return-void
.end method

.method public eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/InPort;

    if-eqz v7, :cond_0

    move-object v7, v1

    check-cast v7, Lgnu/mapping/InPort;

    :goto_0
    move-object v3, v7

    .line 923
    .local v3, "port":Lgnu/mapping/InPort;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v7

    move-object v4, v7

    .line 924
    .local v4, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v4

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v5, v7

    .line 927
    .local v5, "save":Lgnu/lists/Consumer;
    move-object v7, v4

    move-object v8, v2

    :try_start_0
    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 928
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    move-object v7, v4

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 933
    .line 934
    return-void

    .line 922
    .end local v3    # "port":Lgnu/mapping/InPort;
    .end local v4    # "ctx":Lgnu/mapping/CallContext;
    .end local v5    # "save":Lgnu/lists/Consumer;
    :cond_0
    new-instance v7, Lgnu/mapping/InPort;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 932
    .restart local v3    # "port":Lgnu/mapping/InPort;
    .restart local v4    # "ctx":Lgnu/mapping/CallContext;
    .restart local v5    # "save":Lgnu/lists/Consumer;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    move-object v8, v5

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v7, v6

    throw v7
.end method

.method public final eval(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "out":Ljava/io/Writer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    .line 917
    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v3, v0

    new-instance v4, Lgnu/mapping/CharArrayInPort;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    .line 911
    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/PrintConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/PrintConsumer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Language;->eval(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 905
    return-void
.end method

.method public final eval(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 896
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, p2

    .local v2, "out":Ljava/io/Writer;
    move-object v3, v0

    new-instance v4, Lgnu/mapping/CharArrayInPort;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 897
    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 10

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "lexer":Lgnu/text/Lexer;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "lexical":Lgnu/expr/NameLookup;
    new-instance v4, Lgnu/expr/Compilation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v0, v2

    .line 390
    .end local v0    # "this":Lgnu/expr/Language;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "fld":Ljava/lang/reflect/Field;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    const/4 v3, 0x0

    move-object v0, v3

    .line 383
    .end local v0    # "this":Lgnu/expr/Language;
    :goto_0
    return-object v0

    .line 380
    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v0, v3

    goto :goto_0

    .line 383
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public final getEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    goto :goto_0
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 3

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move v1, p1

    .local v1, "readable":Z
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 559
    .local v2, "clas":Ljava/lang/Class;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 560
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    .line 562
    .end local v0    # "this":Lgnu/expr/Language;
    .end local v2    # "clas":Ljava/lang/Class;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public abstract getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 444
    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v2, v3

    .line 445
    .local v2, "dot":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 446
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 447
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 3

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return v0
.end method

.method public final getNewEnvironment()Lgnu/mapping/Environment;
    .locals 5

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "environment-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lgnu/expr/Language;->envCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v4

    move v3, v4

    sput v3, Lgnu/expr/Language;->envCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 7

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/OutPort;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/OutPort;

    :goto_0
    move-object v2, v3

    .line 437
    .local v2, "oport":Lgnu/mapping/OutPort;
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 438
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .line 435
    .end local v2    # "oport":Lgnu/mapping/OutPort;
    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    new-instance v3, Lgnu/mapping/OutPort;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 8

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    const/4 v3, 0x0

    move-object v1, v3

    .line 852
    .local v1, "property":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v1, v3

    .line 854
    .end local v1    # "property":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "default-prompter"

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Procedure;

    move-object v2, v3

    .line 856
    .local v2, "prompter":Lgnu/mapping/Procedure;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 857
    move-object v3, v2

    move-object v0, v3

    .line 859
    .end local v0    # "this":Lgnu/expr/Language;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_1
    new-instance v3, Lgnu/expr/SimplePrompter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lgnu/expr/SimplePrompter;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;
    .locals 14

    .prologue
    .line 627
    move-object v1, p0

    .local v1, "this":Lgnu/expr/Language;
    move-object v2, p1

    .local v2, "exp":Lgnu/expr/Expression;
    move/from16 v3, p2

    .local v3, "lenient":Z
    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_2

    .line 629
    move-object v9, v2

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    .line 630
    .local v4, "value":Ljava/lang/Object;
    move-object v9, v4

    instance-of v9, v9, Lgnu/bytecode/Type;

    if-eqz v9, :cond_0

    .line 631
    move-object v9, v4

    check-cast v9, Lgnu/bytecode/Type;

    move-object v1, v9

    .line 687
    .end local v1    # "this":Lgnu/expr/Language;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 632
    .restart local v1    # "this":Lgnu/expr/Language;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    move-object v9, v4

    instance-of v9, v9, Ljava/lang/Class;

    if-eqz v9, :cond_1

    .line 633
    move-object v9, v4

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 634
    :cond_1
    move-object v9, v1

    move-object v10, v4

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 636
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_d

    .line 638
    move-object v9, v2

    check-cast v9, Lgnu/expr/ReferenceExp;

    move-object v4, v9

    .line 639
    .local v4, "rexp":Lgnu/expr/ReferenceExp;
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v9

    move-object v5, v9

    .line 640
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 641
    .local v6, "name":Ljava/lang/String;
    move-object v9, v5

    if-eqz v9, :cond_8

    .line 643
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    move-object v2, v9

    .line 644
    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_3

    move-object v9, v5

    const-wide/16 v10, 0x4000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v9

    if-nez v9, :cond_3

    .line 648
    move-object v9, v2

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 649
    .local v7, "val":Ljava/lang/Object;
    move-object v9, v1

    move-object v10, v7

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 651
    .end local v7    # "val":Ljava/lang/Object;
    :cond_3
    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/ClassExp;

    if-nez v9, :cond_4

    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_5

    .line 653
    :cond_4
    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 654
    move-object v9, v2

    check-cast v9, Lgnu/expr/LambdaExp;

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    .line 656
    :cond_5
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_9

    .line 659
    move-object v9, v2

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 660
    .restart local v7    # "val":Ljava/lang/Object;
    move-object v9, v7

    instance-of v9, v9, Lgnu/mapping/Location;

    if-eqz v9, :cond_8

    .line 662
    move-object v9, v7

    check-cast v9, Lgnu/mapping/Location;

    move-object v8, v9

    .line 663
    .local v8, "loc":Lgnu/mapping/Location;
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/mapping/Location;->isBound()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 664
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v10}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v10

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_0

    .line 665
    :cond_6
    move-object v9, v8

    instance-of v9, v9, Lgnu/mapping/Named;

    if-nez v9, :cond_7

    .line 666
    const/4 v9, 0x0

    move-object v1, v9

    goto/16 :goto_0

    .line 667
    :cond_7
    move-object v9, v8

    check-cast v9, Lgnu/mapping/Named;

    invoke-interface {v9}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 669
    .line 673
    .end local v7    # "val":Ljava/lang/Object;
    .end local v8    # "loc":Lgnu/mapping/Location;
    :cond_8
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 674
    .restart local v7    # "val":Ljava/lang/Object;
    move-object v9, v7

    instance-of v9, v9, Lgnu/bytecode/Type;

    if-eqz v9, :cond_a

    .line 675
    move-object v9, v7

    check-cast v9, Lgnu/bytecode/Type;

    move-object v1, v9

    goto/16 :goto_0

    .line 670
    .end local v7    # "val":Ljava/lang/Object;
    :cond_9
    move-object v9, v5

    const-wide/32 v10, 0x10000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-nez v9, :cond_8

    .line 671
    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_0

    .line 676
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_a
    move-object v9, v7

    instance-of v9, v9, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v9, :cond_b

    .line 677
    move-object v9, v7

    check-cast v9, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_0

    .line 678
    :cond_b
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v8, v9

    .line 679
    .local v8, "len":I
    move v9, v8

    const/4 v10, 0x2

    if-le v9, v10, :cond_c

    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_c

    move-object v9, v6

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3e

    if-ne v9, v10, :cond_c

    .line 681
    move-object v9, v1

    move-object v10, v6

    const/4 v11, 0x1

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_0

    .line 682
    .line 687
    .end local v4    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/Object;
    .end local v8    # "len":I
    :cond_c
    const/4 v9, 0x0

    move-object v1, v9

    goto/16 :goto_0

    .line 683
    :cond_d
    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/ClassExp;

    if-nez v9, :cond_e

    move-object v9, v2

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_c

    .line 685
    :cond_e
    move-object v9, v2

    check-cast v9, Lgnu/expr/LambdaExp;

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, v1

    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;
    .locals 7

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "spec":Ljava/lang/Object;
    move v2, p2

    .local v2, "lenient":Z
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/Type;

    if-eqz v4, :cond_0

    .line 595
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/Type;

    move-object v0, v4

    .line 610
    .end local v0    # "this":Lgnu/expr/Language;
    :goto_0
    return-object v0

    .line 596
    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 597
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 598
    :cond_1
    move v4, v2

    if-eqz v4, :cond_4

    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/FString;

    if-nez v4, :cond_3

    move-object v4, v1

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lgnu/mapping/Symbol;

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/CharSeq;

    if-eqz v4, :cond_4

    .line 603
    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 604
    :cond_4
    move-object v4, v1

    instance-of v4, v4, Lgnu/mapping/Namespace;

    if-eqz v4, :cond_5

    .line 606
    move-object v4, v1

    check-cast v4, Lgnu/mapping/Namespace;

    invoke-virtual {v4}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 607
    .local v3, "uri":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_5

    move-object v4, v3

    const-string/jumbo v5, "class:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 608
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 610
    .end local v3    # "uri":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 5

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move v2, p2

    .local v2, "namespace":I
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v3

    move v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/expr/Language;
    return v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/Language;
    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 404
    .line 407
    .local v2, "clas":Ljava/lang/Class;
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 408
    .local v3, "inst":Ljava/lang/Object;
    move-object v4, v3

    move-object v5, v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 409
    move-object v4, v3

    instance-of v4, v4, Lgnu/expr/ModuleBody;

    if-eqz v4, :cond_0

    .line 410
    move-object v4, v3

    check-cast v4, Lgnu/expr/ModuleBody;

    invoke-virtual {v4}, Lgnu/expr/ModuleBody;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    .line 416
    :cond_0
    return-void

    .line 401
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "inst":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 403
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    move-object v4, v3

    throw v4

    .line 412
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "clas":Ljava/lang/Class;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 414
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 8

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move v3, p3

    .local v3, "hash":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v4

    goto :goto_0
.end method

.method public noValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move v3, p3

    .local v3, "options":I
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v5

    move v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move v3, p3

    .local v3, "options":I
    move-object v4, p4

    .local v4, "info":Lgnu/expr/ModuleInfo;
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v6

    move v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "port":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "info":Lgnu/expr/ModuleInfo;
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v5

    const/16 v6, 0x8

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/Language;
    return-object v0
.end method

.method public final parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "lexer":Lgnu/text/Lexer;
    move v2, p2

    .local v2, "options":I
    move-object/from16 v3, p3

    .local v3, "info":Lgnu/expr/ModuleInfo;
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v8

    move-object v4, v8

    .line 514
    .local v4, "messages":Lgnu/text/SourceMessages;
    move v8, v2

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v8

    move-object v9, v0

    invoke-static {v8, v9}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v8

    :goto_0
    move-object v5, v8

    .line 517
    .local v5, "lexical":Lgnu/expr/NameLookup;
    move v8, v2

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    move v6, v8

    .line 518
    .local v6, "immediate":Z
    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lgnu/expr/Language;->getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;

    move-result-object v8

    move-object v7, v8

    .line 519
    .local v7, "tr":Lgnu/expr/Compilation;
    sget-boolean v8, Lgnu/expr/Language;->requirePedantic:Z

    if-eqz v8, :cond_0

    .line 520
    move-object v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Lgnu/expr/Compilation;->pedantic:Z

    .line 521
    :cond_0
    move v8, v6

    if-nez v8, :cond_1

    .line 522
    move-object v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Lgnu/expr/Compilation;->mustCompile:Z

    .line 523
    :cond_1
    move-object v8, v7

    move v9, v6

    iput-boolean v9, v8, Lgnu/expr/Compilation;->immediate:Z

    .line 524
    move-object v8, v7

    move v9, v2

    iput v9, v8, Lgnu/expr/Compilation;->langOptions:I

    .line 525
    move v8, v2

    const/16 v9, 0x40

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2

    .line 526
    move-object v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Lgnu/expr/Compilation;->explicit:Z

    .line 527
    :cond_2
    move v8, v2

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 528
    move-object v8, v7

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->setState(I)V

    .line 529
    :cond_3
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    move-result-object v8

    .line 530
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 531
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 532
    :cond_4
    move-object v8, v0

    move-object v9, v7

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 533
    const/4 v8, 0x0

    move-object v0, v8

    .line 536
    .end local v0    # "this":Lgnu/expr/Language;
    :goto_2
    return-object v0

    .line 514
    .end local v5    # "lexical":Lgnu/expr/NameLookup;
    .end local v6    # "immediate":Z
    .end local v7    # "tr":Lgnu/expr/Compilation;
    .restart local v0    # "this":Lgnu/expr/Language;
    :cond_5
    new-instance v8, Lgnu/expr/NameLookup;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    goto :goto_0

    .line 517
    .restart local v5    # "lexical":Lgnu/expr/NameLookup;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 534
    .restart local v6    # "immediate":Z
    .restart local v7    # "tr":Lgnu/expr/Compilation;
    :cond_7
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 535
    move-object v8, v7

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->setState(I)V

    .line 536
    :cond_8
    move-object v8, v7

    move-object v0, v8

    goto :goto_2
.end method

.method public abstract parse(Lgnu/expr/Compilation;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 547
    return-void
.end method

.method public runAsApplication([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Language;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 959
    move-object v2, v1

    invoke-static {v2}, Lkawa/repl;->main([Ljava/lang/String;)V

    .line 960
    return-void
.end method
