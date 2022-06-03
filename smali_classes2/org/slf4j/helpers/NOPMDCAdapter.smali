.class public Lorg/slf4j/helpers/NOPMDCAdapter;
.super Ljava/lang/Object;
.source "NOPMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NOPMDCAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NOPMDCAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/NOPMDCAdapter;
    return-object v0
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NOPMDCAdapter;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/NOPMDCAdapter;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
