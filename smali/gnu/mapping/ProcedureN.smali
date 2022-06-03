.class public abstract Lgnu/mapping/ProcedureN;
.super Lgnu/mapping/Procedure;
.source "ProcedureN.java"


# static fields
.field public static final noArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, p1

    .local v1, "n":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, v0

    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/ProcedureN;
    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 30
    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 31
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/ProcedureN;
    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 37
    .local v3, "args":[Ljava/lang/Object;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    .line 38
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 39
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/ProcedureN;
    return-object v0
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 45
    .local v4, "args":[Ljava/lang/Object;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    .line 46
    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    .line 47
    move-object v5, v4

    const/4 v6, 0x2

    move-object v7, v3

    aput-object v7, v5, v6

    .line 48
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/ProcedureN;
    return-object v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcedureN;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    move-object v5, v6

    .line 55
    .local v5, "args":[Ljava/lang/Object;
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 56
    move-object v6, v5

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 57
    move-object v6, v5

    const/4 v7, 0x2

    move-object v8, v3

    aput-object v8, v6, v7

    .line 58
    move-object v6, v5

    const/4 v7, 0x3

    move-object v8, v4

    aput-object v8, v6, v7

    .line 59
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/mapping/ProcedureN;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lgnu/mapping/ProcedureN;
    return-object v0
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
