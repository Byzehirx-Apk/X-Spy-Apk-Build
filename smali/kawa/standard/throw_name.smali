.class public Lkawa/standard/throw_name;
.super Lgnu/mapping/ProcedureN;
.source "throw_name.java"


# static fields
.field public static final throwName:Lkawa/standard/throw_name;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lkawa/standard/throw_name;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/throw_name;-><init>()V

    sput-object v0, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lkawa/standard/throw_name;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lkawa/standard/throw_name;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 13
    .local v2, "len":I
    move v4, v2

    if-lez v4, :cond_0

    .line 15
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v3, v4

    .line 16
    .local v3, "key":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 18
    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 19
    move-object v4, v3

    invoke-static {v4}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    .line 24
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    new-instance v4, Lkawa/lang/GenericError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "bad arguments to throw"

    invoke-direct {v5, v6}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 21
    .restart local v3    # "key":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_0

    .line 22
    new-instance v4, Lkawa/lang/NamedException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    check-cast v6, Lgnu/mapping/Symbol;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lkawa/lang/NamedException;-><init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V

    throw v4
.end method
