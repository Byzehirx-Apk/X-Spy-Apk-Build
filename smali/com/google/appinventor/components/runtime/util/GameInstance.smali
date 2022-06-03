.class public Lcom/google/appinventor/components/runtime/util/GameInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AQ1MpycqIZ4lZp4zU5ZgAcOeQWFjlY37qDhSA6zNIQj8WisYY7lHQNjV6h6Xnju0:Ljava/lang/String;

.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    .line 44
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/Map;

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->AQ1MpycqIZ4lZp4zU5ZgAcOeQWFjlY37qDhSA6zNIQj8WisYY7lHQNjV6h6Xnju0:Ljava/lang/String;

    .line 46
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getInstanceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/GameInstance;->AQ1MpycqIZ4lZp4zU5ZgAcOeQWFjlY37qDhSA6zNIQj8WisYY7lHQNjV6h6Xnju0:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getLeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/GameInstance;->GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getMessageTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public getPlayers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/GameInstance;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public putMessageTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/GameInstance;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    return-void
.end method

.method public setLeader(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/GameInstance;->GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/PlayerListDelta;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/GameInstance;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    sget-object v4, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-object v0, v4

    .line 100
    :goto_0
    return-object v0

    .line 88
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/GameInstance;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    move-object v2, v4

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 90
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/GameInstance;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    .line 92
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    .line 93
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    .line 96
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 97
    sget-object v4, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-object v0, v4

    goto :goto_0

    .line 100
    :cond_1
    new-instance v4, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v4

    goto :goto_0
.end method
