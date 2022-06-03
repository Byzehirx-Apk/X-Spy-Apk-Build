.class public Lgnu/xquery/util/ItemAt;
.super Lgnu/mapping/Procedure2;
.source "ItemAt.java"


# static fields
.field public static final itemAt:Lgnu/xquery/util/ItemAt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/xquery/util/ItemAt;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xquery/util/ItemAt;-><init>()V

    sput-object v0, Lgnu/xquery/util/ItemAt;->itemAt:Lgnu/xquery/util/ItemAt;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ItemAt;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static itemAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "seq":Ljava/lang/Object;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    instance-of v3, v3, Lgnu/mapping/Values;

    if-eqz v3, :cond_1

    .line 18
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Values;

    move-object v2, v3

    .line 19
    .local v2, "vals":Lgnu/mapping/Values;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .line 27
    .end local v0    # "seq":Ljava/lang/Object;
    .end local v2    # "vals":Lgnu/mapping/Values;
    :goto_0
    return-object v0

    .line 21
    .restart local v0    # "seq":Ljava/lang/Object;
    .restart local v2    # "vals":Lgnu/mapping/Values;
    :cond_0
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 25
    .end local v2    # "vals":Lgnu/mapping/Values;
    :cond_1
    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 26
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 27
    :cond_2
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ItemAt;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lgnu/xquery/util/ItemAt;->itemAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/xquery/util/ItemAt;
    return-object v0
.end method
