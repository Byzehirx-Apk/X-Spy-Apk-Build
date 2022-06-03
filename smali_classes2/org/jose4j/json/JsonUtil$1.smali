.class final Lorg/jose4j/json/JsonUtil$1;
.super Ljava/lang/Object;
.source "JsonUtil.java"

# interfaces
.implements Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/json/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/JsonUtil$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public creatArrayContainer()Ljava/util/List;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/JsonUtil$1;
    new-instance v1, Ljava/util/ArrayList;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/JsonUtil$1;
    return-object v0
.end method

.method public createObjectContainer()Ljava/util/Map;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/JsonUtil$1;
    new-instance v1, Lorg/jose4j/json/JsonUtil$DupeKeyDisallowingLinkedHashMap;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/jose4j/json/JsonUtil$DupeKeyDisallowingLinkedHashMap;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/JsonUtil$1;
    return-object v0
.end method
