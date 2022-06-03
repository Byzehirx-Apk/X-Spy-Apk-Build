.class public Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;
.super Ljava/lang/Object;
.source "CommonSchemaDataUtils.java"


# static fields
.field static final DATA_TYPE_DATETIME:I = 0x9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DATA_TYPE_DOUBLE:I = 0x6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DATA_TYPE_INT64:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final METADATA_FIELDS:Ljava/lang/String; = "f"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommonSchemaData(Ljava/util/List;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;",
            "Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v2, p0

    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;>;"
    move-object/from16 v3, p1

    .local v3, "dest":Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;
    move-object/from16 v18, v2

    if-nez v18, :cond_0

    .line 55
    .line 150
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    new-instance v18, Lcom/microsoft/appcenter/ingestion/models/one/Data;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Lcom/microsoft/appcenter/ingestion/models/one/Data;-><init>()V

    move-object/from16 v4, v18

    .line 61
    .local v4, "data":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setData(Lcom/microsoft/appcenter/ingestion/models/one/Data;)V

    .line 64
    new-instance v18, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;-><init>()V

    move-object/from16 v5, v18

    .line 65
    .local v5, "metadata":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    move-object/from16 v18, v2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v6, v18

    :goto_1
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, v18

    .line 70
    .local v7, "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object/from16 v18, v7

    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->validateProperty(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    move-object/from16 v8, v18

    .line 74
    .line 77
    .local v8, "value":Ljava/lang/Object;
    move-object/from16 v18, v7

    :try_start_2
    invoke-static/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->getMetadataType(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v9, v18

    .line 80
    .local v9, "metadataType":Ljava/lang/Integer;
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 81
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v18, v10

    const-string/jumbo v19, "\\."

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v11, v18

    .line 82
    .local v11, "keys":[Ljava/lang/String;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v12, v18

    .line 85
    .local v12, "lastIndex":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->getProperties()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v13, v18

    .line 86
    .local v13, "destProperties":Lorg/json/JSONObject;
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->getMetadata()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v14, v18

    .line 87
    .local v14, "destMetadata":Lorg/json/JSONObject;
    const/16 v18, 0x0

    move/from16 v15, v18

    .local v15, "i":I
    :goto_2
    move/from16 v18, v15

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 90
    move-object/from16 v18, v11

    move/from16 v19, v15

    aget-object v18, v18, v19

    move-object/from16 v16, v18

    .line 91
    .local v16, "subKey":Ljava/lang/String;
    move-object/from16 v18, v13

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v17, v18

    .line 92
    .local v17, "subDataObject":Lorg/json/JSONObject;
    move-object/from16 v18, v17

    if-nez v18, :cond_2

    .line 93
    move-object/from16 v18, v13

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 94
    const-string/jumbo v18, "AppCenter"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Property key \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' already has a value, the old value will be overridden."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v17, v18

    .line 99
    move-object/from16 v18, v13

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v18

    .line 101
    :cond_2
    move-object/from16 v18, v17

    move-object/from16 v13, v18

    .line 104
    move-object/from16 v18, v14

    move-object/from16 v19, v16

    invoke-static/range {v18 .. v19}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->addIntermediateMetadata(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v14, v18

    .line 87
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 71
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "metadataType":Ljava/lang/Integer;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "keys":[Ljava/lang/String;
    .end local v12    # "lastIndex":I
    .end local v13    # "destProperties":Lorg/json/JSONObject;
    .end local v14    # "destMetadata":Lorg/json/JSONObject;
    .end local v15    # "i":I
    .end local v16    # "subKey":Ljava/lang/String;
    .end local v17    # "subDataObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 72
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v18, "AppCenter"

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    goto/16 :goto_1

    .line 108
    .restart local v8    # "value":Ljava/lang/Object;
    .local v9, "metadataType":Ljava/lang/Integer;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "keys":[Ljava/lang/String;
    .restart local v12    # "lastIndex":I
    .restart local v13    # "destProperties":Lorg/json/JSONObject;
    .restart local v14    # "destMetadata":Lorg/json/JSONObject;
    .restart local v15    # "i":I
    :cond_3
    move-object/from16 v18, v11

    move/from16 v19, v12

    aget-object v18, v18, v19

    move-object/from16 v15, v18

    .line 109
    .local v15, "lastKey":Ljava/lang/String;
    move-object/from16 v18, v13

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 110
    const-string/jumbo v18, "AppCenter"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Property key \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' already has a value, the old value will be overridden."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4
    move-object/from16 v18, v13

    move-object/from16 v19, v15

    move-object/from16 v20, v8

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v18

    .line 115
    move-object/from16 v18, v9

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v18 .. v20}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->addLeafMetadata(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 116
    goto/16 :goto_1

    .line 119
    .end local v7    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "metadataType":Ljava/lang/Integer;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "keys":[Ljava/lang/String;
    .end local v12    # "lastIndex":I
    .end local v13    # "destProperties":Lorg/json/JSONObject;
    .end local v14    # "destMetadata":Lorg/json/JSONObject;
    .end local v15    # "lastKey":Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->getProperties()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v6, v18

    .line 120
    .local v6, "dataObject":Lorg/json/JSONObject;
    move-object/from16 v18, v6

    const-string/jumbo v19, "baseType"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 121
    .local v7, "baseType":Ljava/lang/String;
    move-object/from16 v18, v6

    const-string/jumbo v19, "baseData"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v8, v18

    .line 122
    .local v8, "baseData":Lorg/json/JSONObject;
    move-object/from16 v18, v7

    if-nez v18, :cond_6

    move-object/from16 v18, v8

    if-eqz v18, :cond_6

    .line 125
    const-string/jumbo v18, "AppCenter"

    const-string/jumbo v19, "baseData was set but baseType is missing."

    invoke-static/range {v18 .. v19}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    move-object/from16 v18, v6

    const-string/jumbo v19, "baseData"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 127
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->getMetadata()Lorg/json/JSONObject;

    move-result-object v18

    const-string/jumbo v19, "f"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v9, v18

    .line 130
    .local v9, "baseMetaData":Lorg/json/JSONObject;
    move-object/from16 v18, v9

    const-string/jumbo v19, "baseData"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 132
    .end local v9    # "baseMetaData":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v18, v7

    if-eqz v18, :cond_7

    move-object/from16 v18, v8

    if-nez v18, :cond_7

    .line 135
    const-string/jumbo v18, "AppCenter"

    const-string/jumbo v19, "baseType was set but baseData is missing."

    invoke-static/range {v18 .. v19}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v18, v6

    const-string/jumbo v19, "baseType"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 140
    :cond_7
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->getMetadata()Lorg/json/JSONObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->cleanUpEmptyObjectsInMetadata(Lorg/json/JSONObject;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 141
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v18

    if-nez v18, :cond_8

    .line 142
    move-object/from16 v18, v3

    new-instance v19, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setExt(Lcom/microsoft/appcenter/ingestion/models/one/Extensions;)V

    .line 144
    :cond_8
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v18

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setMetadata(Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    .line 150
    .end local v4    # "data":Lcom/microsoft/appcenter/ingestion/models/one/Data;
    .end local v5    # "metadata":Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;
    .end local v6    # "dataObject":Lorg/json/JSONObject;
    .end local v7    # "baseType":Ljava/lang/String;
    .end local v8    # "baseData":Lorg/json/JSONObject;
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 146
    :catch_1
    move-exception v18

    move-object/from16 v4, v18

    goto :goto_3
.end method

.method private static addIntermediateMetadata(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "destMetadata":Lorg/json/JSONObject;
    move-object v1, p1

    .local v1, "subKey":Ljava/lang/String;
    move-object v4, v0

    const-string/jumbo v5, "f"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v2, v4

    .line 261
    .local v2, "fields":Lorg/json/JSONObject;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 262
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v4

    .line 263
    move-object v4, v0

    const-string/jumbo v5, "f"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 265
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 266
    .local v3, "subMetadataObject":Lorg/json/JSONObject;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 267
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 268
    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 270
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "destMetadata":Lorg/json/JSONObject;
    return-object v0
.end method

.method private static addLeafMetadata(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "metadataType":Ljava/lang/Integer;
    move-object v1, p1

    .local v1, "destMetadata":Lorg/json/JSONObject;
    move-object v2, p2

    .local v2, "lastKey":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "f"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 237
    .local v3, "fields":Lorg/json/JSONObject;
    move-object v4, v0

    if-eqz v4, :cond_2

    .line 238
    move-object v4, v3

    if-nez v4, :cond_0

    .line 239
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 240
    move-object v4, v1

    const-string/jumbo v5, "f"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 242
    :cond_0
    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 247
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private static cleanUpEmptyObjectsInMetadata(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "object":Lorg/json/JSONObject;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 289
    .local v2, "childKey":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 290
    .local v3, "child":Lorg/json/JSONObject;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 291
    move-object v4, v3

    invoke-static {v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->cleanUpEmptyObjectsInMetadata(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 295
    :cond_0
    goto :goto_0

    .line 296
    .end local v2    # "childKey":Ljava/lang/String;
    .end local v3    # "child":Lorg/json/JSONObject;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "object":Lorg/json/JSONObject;
    return v0

    .restart local v0    # "object":Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getMetadataType(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v1, v0

    instance-of v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 224
    .end local v0    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :goto_0
    return-object v0

    .line 218
    .restart local v0    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    if-eqz v1, :cond_1

    .line 219
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 221
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    if-eqz v1, :cond_2

    .line 222
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 224
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static validateProperty(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 164
    .local v1, "key":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Property key cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "baseType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    instance-of v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    if-nez v4, :cond_1

    .line 170
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "baseType must be a string."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "baseType."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "baseType must be a string."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "baseData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "baseData must be an object."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    if-eqz v4, :cond_4

    .line 184
    move-object v4, v0

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    move-object v3, v4

    .line 185
    .local v3, "stringTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 202
    .end local v3    # "stringTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_9

    .line 203
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Value of property with key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' cannot be null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_4
    move-object v4, v0

    instance-of v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    if-eqz v4, :cond_5

    .line 187
    move-object v4, v0

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    move-object v3, v4

    .line 188
    .local v3, "longTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v2, v4

    .line 189
    .local v2, "value":Ljava/lang/Long;
    goto :goto_0

    .end local v2    # "value":Ljava/lang/Long;
    .end local v3    # "longTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;
    :cond_5
    move-object v4, v0

    instance-of v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    if-eqz v4, :cond_6

    .line 190
    move-object v4, v0

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    move-object v3, v4

    .line 191
    .local v3, "doubleTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v2, v4

    .line 192
    .local v2, "value":Ljava/lang/Double;
    goto :goto_0

    .end local v2    # "value":Ljava/lang/Double;
    .end local v3    # "doubleTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;
    :cond_6
    move-object v4, v0

    instance-of v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    if-eqz v4, :cond_7

    .line 193
    move-object v4, v0

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->getValue()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    move-object v4, v0

    instance-of v4, v4, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    if-eqz v4, :cond_8

    .line 195
    move-object v4, v0

    check-cast v4, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    move-object v3, v4

    .line 196
    .local v3, "booleanTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->getValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v2, v4

    .line 197
    .local v2, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 198
    .end local v2    # "value":Ljava/lang/Boolean;
    .end local v3    # "booleanTypedProperty":Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported property type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :cond_9
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "property":Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    return-object v0
.end method
