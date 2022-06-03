.class Lorg/slf4j/helpers/BasicMDCAdapter$1;
.super Ljava/lang/InheritableThreadLocal;
.source "BasicMDCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slf4j/helpers/BasicMDCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slf4j/helpers/BasicMDCAdapter;


# direct methods
.method constructor <init>(Lorg/slf4j/helpers/BasicMDCAdapter;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter$1;
    move-object v1, p1

    .local v1, "this$0":Lorg/slf4j/helpers/BasicMDCAdapter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/helpers/BasicMDCAdapter$1;->this$0:Lorg/slf4j/helpers/BasicMDCAdapter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3}, Lorg/slf4j/helpers/BasicMDCAdapter$1;->childValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter$1;
    return-object v0
.end method

.method protected childValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/BasicMDCAdapter$1;
    move-object v1, p1

    .local v1, "parentValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 51
    const/4 v2, 0x0

    move-object v0, v2

    .line 53
    .end local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/slf4j/helpers/BasicMDCAdapter$1;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v2

    goto :goto_0
.end method
