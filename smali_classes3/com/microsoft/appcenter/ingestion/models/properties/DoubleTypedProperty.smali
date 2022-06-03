.class public Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
.super Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
.source "DoubleTypedProperty.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "double"


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
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

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 66
    .end local v1    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    :goto_0
    return v1

    .line 61
    .restart local v1    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
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

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    move-object v3, v4

    .line 66
    .local v3, "that":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v4, v3

    iget-wide v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->value:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->value:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

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

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    const-string/jumbo v1, "double"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    return-object v0
.end method

.method public getValue()D
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v1, v0

    iget-wide v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->value:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    return-wide v0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v5, v1

    invoke-super {v5}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->hashCode()I

    move-result v5

    move v2, v5

    .line 73
    .local v2, "result":I
    move-object v5, v1

    iget-wide v5, v5, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->value:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    move-wide v3, v5

    .line 74
    .local v3, "temp":J
    const/16 v5, 0x1f

    move v6, v2

    mul-int/2addr v5, v6

    move-wide v6, v3

    move-wide v8, v3

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int/2addr v5, v6

    move v2, v5

    .line 75
    move v5, v2

    move v1, v5

    .end local v1    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
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

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v2, p1

    .local v2, "object":Lorg/json/JSONObject;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->read(Lorg/json/JSONObject;)V

    .line 49
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->setValue(D)V

    .line 50
    return-void
.end method

.method public setValue(D)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->value:D

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

    .local v1, "this":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
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

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->getValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONStringer;

    move-result-object v3

    .line 56
    return-void
.end method
