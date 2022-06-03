.class public Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
.super Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
.source "LongTypedProperty.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "long"


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 60
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 66
    .end local v1    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    :goto_0
    return v1

    .line 61
    .restart local v1    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 62
    :cond_2
    move-object v4, v1

    move-object v5, v2

    invoke-super {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 64
    :cond_3
    move-object v4, v2

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    move-object v3, v4

    .line 66
    .local v3, "that":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v4, v1

    iget-wide v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->value:J

    move-object v6, v3

    iget-wide v6, v6, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->value:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    const-string/jumbo v1, "long"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    return-object v0
.end method

.method public getValue()J
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v1, v0

    iget-wide v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->value:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v3, v1

    invoke-super {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->hashCode()I

    move-result v3

    move v2, v3

    .line 72
    .local v2, "result":I
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->value:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->value:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 73
    move v3, v2

    move v1, v3

    .end local v1    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    return v1
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v2, p1

    .local v2, "object":Lorg/json/JSONObject;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->read(Lorg/json/JSONObject;)V

    .line 49
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->setValue(J)V

    .line 50
    return-void
.end method

.method public setValue(J)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->value:J

    .line 44
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v2, p1

    .local v2, "writer":Lorg/json/JSONStringer;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->write(Lorg/json/JSONStringer;)V

    .line 55
    move-object v3, v2

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->getValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    .line 56
    return-void
.end method
