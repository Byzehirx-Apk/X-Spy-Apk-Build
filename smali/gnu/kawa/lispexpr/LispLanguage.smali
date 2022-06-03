.class public abstract Lgnu/kawa/lispexpr/LispLanguage;
.super Lgnu/expr/Language;
.source "LispLanguage.java"


# static fields
.field public static final bracket_apply_sym:Lgnu/mapping/Symbol;

.field public static final bracket_list_sym:Lgnu/mapping/Symbol;

.field public static getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation; = null

.field public static final lookup_sym:Lgnu/mapping/Symbol;

.field public static final quasiquote_sym:Ljava/lang/String; = "quasiquote"

.field public static final quote_sym:Ljava/lang/String; = "quote"

.field public static final unquote_sym:Ljava/lang/String; = "unquote"

.field public static final unquotesplicing_sym:Ljava/lang/String; = "unquote-splicing"


# instance fields
.field public defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "$lookup$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    .line 28
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "$bracket-list$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->bracket_list_sym:Lgnu/mapping/Symbol;

    .line 32
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string/jumbo v1, "$bracket-apply$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->bracket_apply_sym:Lgnu/mapping/Symbol;

    .line 34
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gnu.kawa.functions.GetNamedPart"

    const-string/jumbo v3, "getNamedPart"

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    .line 36
    sget-object v0, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Language;-><init>()V

    .line 39
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LispLanguage;->createReadTable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    return-void
.end method

.method public static langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "sym":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/LispLanguage;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "sym":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return-object v0
.end method

.method public abstract createReadTable()Lgnu/kawa/lispexpr/ReadTable;
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .locals 10

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "mod":Lgnu/expr/ModuleExp;
    move-object v2, p2

    .local v2, "fvalue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "fld":Lgnu/bytecode/Field;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 130
    .local v4, "fdecl":Lgnu/expr/Declaration;
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v6

    const/16 v7, 0x10

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 131
    .local v5, "isFinal":Z
    move v6, v5

    if-eqz v6, :cond_0

    move-object v6, v2

    instance-of v6, v6, Lkawa/lang/Syntax;

    if-eqz v6, :cond_0

    .line 132
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/expr/Declaration;->setSyntax()V

    .line 133
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return-object v0

    .line 130
    .end local v5    # "isFinal":Z
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
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

    invoke-virtual {v3, v4, v5, v6}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cname":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fname":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/kawa/lispexpr/LispLanguage;->hasSeparateFunctionNamespace()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_0
    move-object v4, v6

    .line 146
    .local v4, "property":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v8, v4

    move-object v9, v2

    move-object v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v6

    move-object v5, v6

    .line 149
    .local v5, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/kawa/reflect/StaticFieldLocation;->setSyntax()V

    .line 150
    return-void

    .line 144
    .end local v4    # "property":Ljava/lang/Object;
    .end local v5    # "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "sym":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/LispLanguage;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .line 183
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    move-object v0, v2

    goto :goto_0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 10

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "lexer":Lgnu/text/Lexer;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "lexical":Lgnu/expr/NameLookup;
    new-instance v4, Lkawa/lang/Translator;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "inp":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    new-instance v3, Lgnu/kawa/lispexpr/LispReader;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/kawa/lispexpr/LispReader;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "func":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return-object v0
.end method

.method public makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "exps":[Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/BeginExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return-object v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move/from16 v2, p2

    .local v2, "options":I
    move-object v12, v1

    check-cast v12, Lkawa/lang/Translator;

    move-object v3, v12

    .line 58
    .local v3, "tr":Lkawa/lang/Translator;
    move-object v12, v3

    iget-object v12, v12, Lkawa/lang/Translator;->lexer:Lgnu/text/Lexer;

    move-object v4, v12

    .line 59
    .local v4, "lexer":Lgnu/text/Lexer;
    move-object v12, v3

    iget-object v12, v12, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    move-object v5, v12

    .line 60
    .local v5, "mexp":Lgnu/expr/ModuleExp;
    new-instance v12, Lgnu/mapping/Values;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lgnu/mapping/Values;-><init>()V

    move-object v6, v12

    .line 61
    .local v6, "forms":Lgnu/mapping/Values;
    move-object v12, v4

    check-cast v12, Lgnu/kawa/lispexpr/LispReader;

    move-object v7, v12

    .line 62
    .local v7, "reader":Lgnu/kawa/lispexpr/LispReader;
    move-object v12, v3

    invoke-static {v12}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v12

    move-object v8, v12

    .line 65
    .local v8, "saveComp":Lgnu/expr/Compilation;
    move-object v12, v3

    :try_start_0
    iget-object v12, v12, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eqz v12, :cond_0

    .line 67
    move-object v12, v3

    move-object v13, v3

    iget-object v13, v13, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    move-object v14, v5

    invoke-virtual {v12, v13, v14}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 68
    move-object v12, v3

    const/4 v13, 0x0

    iput-object v13, v12, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 72
    :cond_0
    :goto_0
    move-object v12, v7

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->readCommand()Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    .line 73
    .local v9, "sexp":Ljava/lang/Object;
    move-object v12, v9

    sget-object v13, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v12, v13, :cond_1

    .line 75
    move v12, v2

    const/4 v13, 0x4

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    .line 76
    const/4 v12, 0x0

    move v10, v12

    .line 115
    move-object v12, v8

    invoke-static {v12}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move v12, v10

    move v0, v12

    .line 117
    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    :goto_1
    return v0

    .line 79
    .restart local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    :cond_1
    move-object v12, v3

    move-object v13, v9

    move-object v14, v5

    :try_start_1
    invoke-virtual {v12, v13, v14}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 80
    move v12, v2

    const/4 v13, 0x4

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_6

    .line 82
    move-object v12, v3

    invoke-virtual {v12}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v12

    invoke-virtual {v12}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 87
    :goto_2
    move-object v12, v7

    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v12

    move v10, v12

    .line 88
    .local v10, "ch":I
    move v12, v10

    if-ltz v12, :cond_2

    move v12, v10

    const/16 v13, 0xd

    if-eq v12, v13, :cond_2

    move v12, v10

    const/16 v13, 0xa

    if-ne v12, v13, :cond_5

    .line 89
    .line 101
    .end local v10    # "ch":I
    :cond_2
    move-object v12, v4

    invoke-virtual {v12}, Lgnu/text/Lexer;->peek()I

    move-result v12

    const/16 v13, 0x29

    if-ne v12, v13, :cond_3

    .line 102
    move-object v12, v4

    const-string/jumbo v13, "An unexpected close paren was read."

    invoke-virtual {v12, v13}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 105
    :cond_3
    move-object v12, v3

    move-object v13, v5

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V

    .line 107
    move v12, v2

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_4

    .line 109
    move-object v12, v3

    const/4 v13, 0x0

    iput v13, v12, Lkawa/lang/Translator;->firstForm:I

    .line 111
    :cond_4
    move-object v12, v3

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    move-object v12, v8

    invoke-static {v12}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 116
    .line 117
    const/4 v12, 0x1

    move v0, v12

    goto :goto_1

    .line 90
    .restart local v10    # "ch":I
    :cond_5
    move-object v12, v7

    :try_start_2
    invoke-virtual {v12}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 91
    goto :goto_2

    .line 95
    .end local v10    # "ch":I
    :cond_6
    move v12, v2

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_7

    move-object v12, v3

    invoke-virtual {v12}, Lkawa/lang/Translator;->getState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_7

    .line 98
    const/4 v12, 0x1

    move v10, v12

    .line 115
    move-object v12, v8

    invoke-static {v12}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move v12, v10

    move v0, v12

    goto :goto_1

    .line 100
    :cond_7
    goto/16 :goto_0

    .line 115
    .end local v9    # "sexp":Ljava/lang/Object;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v8

    invoke-static {v12}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move-object v12, v11

    throw v12
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v1

    check-cast v3, Lkawa/lang/Translator;

    move-object v2, v3

    .line 124
    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 125
    return-void
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/LispLanguage;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/Keyword;

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/lispexpr/LispLanguage;
    return v0
.end method
