.class final Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserModel;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 4

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    .line 1040
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 17

    .prologue
    .line 1045
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v11, v1

    const/4 v12, 0x0

    aget-object v11, v11, v12

    check-cast v11, Ljava/util/List;

    move-object v2, v11

    .line 1046
    .local v2, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object v11, v1

    const/4 v12, 0x1

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/String;

    move-object v3, v11

    .line 1048
    .local v3, "historyFileName":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v4, v11

    .line 1051
    .local v4, "fos":Ljava/io/FileOutputStream;
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object v12, v3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v4, v11

    .line 1055
    .line 1057
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    move-object v5, v11

    .line 1060
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    move-object v11, v5

    move-object v12, v4

    const/4 v13, 0x0

    :try_start_1
    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1061
    move-object v11, v5

    const-string/jumbo v12, "UTF-8"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1062
    move-object v11, v5

    const/4 v12, 0x0

    const-string/jumbo v13, "historical-records"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1064
    move-object v11, v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v6, v11

    .line 1065
    .local v6, "recordCount":I
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_0

    .line 1066
    move-object v11, v2

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object v8, v11

    .line 1067
    .local v8, "record":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    move-object v11, v5

    const/4 v12, 0x0

    const-string/jumbo v13, "historical-record"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1068
    move-object v11, v5

    const/4 v12, 0x0

    const-string/jumbo v13, "activity"

    move-object v14, v8

    iget-object v14, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1069
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 1068
    invoke-interface {v11, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1070
    move-object v11, v5

    const/4 v12, 0x0

    const-string/jumbo v13, "time"

    move-object v14, v8

    iget-wide v14, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1071
    move-object v11, v5

    const/4 v12, 0x0

    const-string/jumbo v13, "weight"

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1072
    move-object v11, v5

    const/4 v12, 0x0

    const-string/jumbo v13, "historical-record"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 1065
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1052
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "recordCount":I
    .end local v7    # "i":I
    .end local v8    # "record":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 1053
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v11, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error writing historical record file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v5

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v11

    .line 1054
    const/4 v11, 0x0

    move-object v0, v11

    .line 1100
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v0

    .line 1078
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "recordCount":I
    .restart local v7    # "i":I
    :cond_0
    move-object v11, v5

    const/4 v12, 0x0

    :try_start_2
    const-string/jumbo v13, "historical-records"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1079
    move-object v11, v5

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1091
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1092
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1094
    move-object v11, v4

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1097
    .line 1100
    .end local v6    # "recordCount":I
    .end local v7    # "i":I
    :cond_1
    :goto_2
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1

    .line 1095
    .restart local v6    # "recordCount":I
    .restart local v7    # "i":I
    :catch_1
    move-exception v11

    move-object v6, v11

    .line 1097
    goto :goto_2

    .line 1084
    .end local v6    # "recordCount":I
    .end local v7    # "i":I
    :catch_2
    move-exception v11

    move-object v6, v11

    .line 1085
    .local v6, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_4
    sget-object v11, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error writing historical record file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v13, v13, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    .line 1091
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1092
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1094
    move-object v11, v4

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1097
    goto :goto_2

    .line 1095
    :catch_3
    move-exception v11

    move-object v6, v11

    .line 1097
    goto :goto_2

    .line 1086
    .end local v6    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v11

    move-object v6, v11

    .line 1087
    .local v6, "ise":Ljava/lang/IllegalStateException;
    :try_start_6
    sget-object v11, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error writing historical record file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v13, v13, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v11

    .line 1091
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1092
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1094
    move-object v11, v4

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1097
    goto :goto_2

    .line 1095
    :catch_5
    move-exception v11

    move-object v6, v11

    .line 1097
    goto :goto_2

    .line 1088
    .end local v6    # "ise":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v11

    move-object v6, v11

    .line 1089
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_8
    sget-object v11, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error writing historical record file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v13, v13, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v11

    .line 1091
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1092
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1094
    move-object v11, v4

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1097
    goto/16 :goto_2

    .line 1095
    :catch_7
    move-exception v11

    move-object v6, v11

    .line 1097
    goto/16 :goto_2

    .line 1091
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1092
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 1094
    move-object v11, v4

    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1097
    :cond_2
    :goto_3
    move-object v11, v9

    throw v11

    .line 1095
    :catch_8
    move-exception v11

    move-object v10, v11

    goto :goto_3
.end method
