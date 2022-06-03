.class public Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
.super Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
.source "BooleanTypedProperty.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "boolean"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 66
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    :goto_0
    return v0

    .line 61
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
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

    .line 62
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 64
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    move-object v2, v3

    .line 66
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->value:Z

    move-object v4, v2

    iget-boolean v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->value:Z

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    const-string/jumbo v1, "boolean"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    return-object v0
.end method

.method public getValue()Z
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->value:Z

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->hashCode()I

    move-result v2

    move v1, v2

    .line 72
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->value:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 73
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    return v0

    .line 72
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
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
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->read(Lorg/json/JSONObject;)V

    .line 49
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->setValue(Z)V

    .line 50
    return-void
.end method

.method public setValue(Z)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->value:Z

    .line 44
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
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->write(Lorg/json/JSONStringer;)V

    .line 55
    move-object v2, v1

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->getValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v2

    .line 56
    return-void
.end method
