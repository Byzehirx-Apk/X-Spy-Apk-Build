.class public Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
.super Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
.source "DateTimeTypedProperty.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "dateTime"


# instance fields
.field private value:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 70
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    :goto_0
    return v0

    .line 65
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
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

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 66
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 68
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    move-object v2, v3

    .line 70
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    const-string/jumbo v1, "dateTime"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    return-object v0
.end method

.method public getValue()Ljava/util/Date;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->hashCode()I

    move-result v2

    move v1, v2

    .line 76
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 77
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    return v0

    .line 76
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
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
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->read(Lorg/json/JSONObject;)V

    .line 53
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->setValue(Ljava/util/Date;)V

    .line 54
    return-void
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v1, p1

    .local v1, "value":Ljava/util/Date;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->value:Ljava/util/Date;

    .line 48
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->write(Lorg/json/JSONStringer;)V

    .line 59
    move-object v2, v1

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->getValue()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 60
    return-void
.end method
