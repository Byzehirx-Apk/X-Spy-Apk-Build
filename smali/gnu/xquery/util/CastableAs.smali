.class public Lgnu/xquery/util/CastableAs;
.super Lgnu/kawa/reflect/InstanceOf;
.source "CastableAs.java"


# static fields
.field public static castableAs:Lgnu/xquery/util/CastableAs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/xquery/util/CastableAs;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xquery/util/CastableAs;-><init>()V

    sput-object v0, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/CastableAs;
    move-object v1, v0

    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v2

    const-string/jumbo v3, "castable as"

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    .line 16
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.xquery.util.CompileMisc:validateApplyCastableAs"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/util/CastableAs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/CastableAs;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/util/CastableAs;->language:Lgnu/expr/Language;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v5

    move-object v3, v5

    .line 24
    .local v3, "type":Lgnu/bytecode/Type;
    move-object v5, v3

    instance-of v5, v5, Lgnu/kawa/xml/XDataType;

    if-eqz v5, :cond_0

    .line 25
    move-object v5, v3

    check-cast v5, Lgnu/kawa/xml/XDataType;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/xml/XDataType;->castable(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 28
    .local v4, "result":Z
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/xquery/util/CastableAs;->language:Lgnu/expr/Language;

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/xquery/util/CastableAs;
    return-object v0

    .line 27
    .end local v4    # "result":Z
    .restart local v0    # "this":Lgnu/xquery/util/CastableAs;
    :cond_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .restart local v4    # "result":Z
    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/CastableAs;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 35
    return-void
.end method
