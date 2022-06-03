.class public Lgnu/xquery/util/DistinctValues;
.super Ljava/lang/Object;
.source "DistinctValues.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValues;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distinctValues$X(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .locals 9

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "values":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "coll":Lgnu/xquery/util/NamedCollator;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    new-instance v4, Lgnu/xquery/util/DistinctValuesConsumer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-direct {v5, v6, v7}, Lgnu/xquery/util/DistinctValuesConsumer;-><init>(Lgnu/xquery/util/NamedCollator;Lgnu/lists/Consumer;)V

    move-object v3, v4

    .line 16
    .local v3, "out":Lgnu/xquery/util/DistinctValuesConsumer;
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 17
    return-void
.end method
