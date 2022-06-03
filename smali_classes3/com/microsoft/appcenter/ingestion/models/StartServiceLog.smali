.class public Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "StartServiceLog.java"


# static fields
.field private static final SERVICES:Ljava/lang/String; = "services"

.field public static final TYPE:Ljava/lang/String; = "startService"


# instance fields
.field private services:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 73
    const/4 v3, 0x1

    move v0, v3

    .line 82
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    :goto_0
    return v0

    .line 75
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 76
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 78
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 81
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    move-object v2, v3

    .line 82
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getServices()Ljava/util/List;
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
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    const-string/jumbo v1, "startService"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v2

    move v1, v2

    .line 88
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 89
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    return v0

    .line 88
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    .line 60
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "services"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readStringArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->setServices(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v1, p1

    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    .line 55
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 66
    move-object v2, v1

    const-string/jumbo v3, "services"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->getServices()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeStringArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    return-void
.end method
