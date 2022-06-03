.class public Lkawa/lib/kawa/hashtable;
.super Lgnu/expr/ModuleBody;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/lib/kawa/hashtable$HashTable;
    }
.end annotation


# static fields
.field public static final $Prvt$do:Lgnu/mapping/Location;

.field public static final $Prvt$hashnode:Ljava/lang/Class;

.field public static final $Prvt$let$St:Lgnu/mapping/Location;

.field public static final $instance:Lkawa/lib/kawa/hashtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field public static final hashtable:Ljava/lang/Class;

.field public static final hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "hashtable-check-mutable"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "mutable"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v1, Lgnu/kawa/util/HashNode;

    sput-object v1, Lkawa/lib/kawa/hashtable;->$Prvt$hashnode:Ljava/lang/Class;

    new-instance v1, Lkawa/lib/kawa/hashtable;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lkawa/lib/kawa/hashtable;-><init>()V

    sput-object v1, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    .line 4
    const-string/jumbo v1, "kawa.lib.std_syntax"

    const-string/jumbo v2, "let$St"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lkawa/lib/kawa/hashtable;->$Prvt$let$St:Lgnu/mapping/Location;

    const-string/jumbo v1, "kawa.lib.std_syntax"

    const-string/jumbo v2, "do"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lkawa/lib/kawa/hashtable;->$Prvt$do:Lgnu/mapping/Location;

    const-class v1, Lkawa/lib/kawa/hashtable$HashTable;

    sput-object v1, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/hashtable;->hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "ht":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, v0

    iget-boolean v1, v1, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-nez v1, :cond_0

    .line 90
    const-string/jumbo v1, "cannot modify non-mutable hashtable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 88
    move-object v3, v2

    :try_start_0
    check-cast v3, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 88
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "hashtable-check-mutable"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 88
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    :goto_0
    return v0

    .line 4294967295
    .line 88
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_1
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 7
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
