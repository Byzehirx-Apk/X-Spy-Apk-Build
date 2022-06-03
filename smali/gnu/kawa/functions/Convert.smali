.class public Lgnu/kawa/functions/Convert;
.super Lgnu/mapping/Procedure2;
.source "Convert.java"


# static fields
.field public static final as:Lgnu/kawa/functions/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    new-instance v0, Lgnu/kawa/functions/Convert;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/Convert;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    .line 9
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    const-string/jumbo v1, "as"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Convert;->setName(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v2, "gnu.kawa.functions.CompileMisc:validateApplyConvert"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Convert;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    sget-object v1, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    const-string/jumbo v2, "*gnu.kawa.functions.CompileMisc:forConvert"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Convert;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/functions/Convert;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Convert;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 24
    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v3, v4

    .line 27
    .local v3, "type":Lgnu/bytecode/Type;
    :goto_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/functions/Convert;
    return-object v0

    .line 26
    .end local v3    # "type":Lgnu/bytecode/Type;
    .restart local v0    # "this":Lgnu/kawa/functions/Convert;
    :cond_0
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/Type;

    move-object v3, v4

    .restart local v3    # "type":Lgnu/bytecode/Type;
    goto :goto_0
.end method
