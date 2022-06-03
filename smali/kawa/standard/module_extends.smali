.class public Lkawa/standard/module_extends;
.super Lkawa/lang/Syntax;
.source "module_extends.java"


# static fields
.field public static final module_extends:Lkawa/standard/module_extends;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/module_extends;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/module_extends;-><init>()V

    sput-object v0, Lkawa/standard/module_extends;->module_extends:Lkawa/standard/module_extends;

    .line 10
    sget-object v0, Lkawa/standard/module_extends;->module_extends:Lkawa/standard/module_extends;

    const-string/jumbo v1, "module-extends"

    invoke-virtual {v0, v1}, Lkawa/standard/module_extends;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_extends;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 8

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/standard/module_extends;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v6

    move-object v4, v6

    .line 15
    .local v4, "base":Lgnu/bytecode/Type;
    move-object v6, v3

    invoke-virtual {v6}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v6

    move-object v5, v6

    .line 16
    .local v5, "module":Lgnu/expr/ModuleExp;
    move-object v6, v5

    move-object v7, v4

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleExp;->setSuperType(Lgnu/bytecode/ClassType;)V

    .line 17
    move-object v6, v5

    const/high16 v7, 0x20000

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 18
    return-void
.end method
