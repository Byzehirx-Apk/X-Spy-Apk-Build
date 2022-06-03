.class public Lkawa/standard/module_compile_options;
.super Lkawa/lang/Syntax;
.source "module_compile_options.java"


# static fields
.field public static final module_compile_options:Lkawa/standard/module_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lkawa/standard/module_compile_options;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/module_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/module_compile_options;->module_compile_options:Lkawa/standard/module_compile_options;

    .line 10
    sget-object v0, Lkawa/standard/module_compile_options;->module_compile_options:Lkawa/standard/module_compile_options;

    const-string/jumbo v1, "module-compile-options"

    invoke-virtual {v0, v1}, Lkawa/standard/module_compile_options;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_compile_options;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_compile_options;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/module_compile_options;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 11

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_compile_options;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v0

    move-object v9, v4

    invoke-static {v6, v7, v8, v9}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 16
    .local v5, "rest":Ljava/lang/Object;
    move-object v6, v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v6, v7, :cond_0

    .line 17
    move-object v6, v4

    const/16 v7, 0x65

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lkawa/standard/module_compile_options;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " key must be a keyword"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 18
    :cond_0
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Lkawa/standard/module_compile_options;
    return v0
.end method
