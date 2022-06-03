.class public Lorg/slf4j/helpers/BasicMarkerFactory;
.super Ljava/lang/Object;
.source "BasicMarkerFactory.java"

# interfaces
.implements Lorg/slf4j/IMarkerFactory;


# instance fields
.field private final markerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    return-void
.end method


# virtual methods
.method public detachMarker(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x0

    move v0, v2

    .line 92
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 83
    const/4 v2, 0x0

    move v0, v2

    .line 85
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lorg/slf4j/helpers/BasicMarker;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/slf4j/helpers/BasicMarker;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    return-object v0
.end method

.method public getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Marker name cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/slf4j/Marker;

    move-object v2, v4

    .line 68
    .local v2, "marker":Lorg/slf4j/Marker;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 69
    new-instance v4, Lorg/slf4j/helpers/BasicMarker;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/slf4j/helpers/BasicMarker;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/BasicMarkerFactory;->markerMap:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/slf4j/Marker;

    move-object v3, v4

    .line 71
    .local v3, "oldMarker":Lorg/slf4j/Marker;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 72
    move-object v4, v3

    move-object v2, v4

    .line 75
    .end local v3    # "oldMarker":Lorg/slf4j/Marker;
    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMarkerFactory;
    return-object v0
.end method
