.class public Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
.super Ljava/lang/Object;
.source "StackFrame.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "className"

.field private static final FILE_NAME:Ljava/lang/String; = "fileName"

.field private static final LINE_NUMBER:Ljava/lang/String; = "lineNumber"

.field private static final METHOD_NAME:Ljava/lang/String; = "methodName"


# instance fields
.field private className:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private lineNumber:Ljava/lang/Integer;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 144
    const/4 v3, 0x1

    move v0, v3

    .line 159
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    :goto_0
    return v0

    .line 146
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
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

    .line 147
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 149
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;

    move-object v2, v3

    .line 150
    .local v2, "that":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 151
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 150
    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 153
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 154
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 153
    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 156
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 157
    :cond_9
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 156
    :cond_a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    if-nez v3, :cond_9

    .line 159
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_c
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_1

    :cond_d
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    return-object v0
.end method

.method public getLineNumber()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 165
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 166
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 167
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 168
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    return v0

    .line 164
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 166
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 167
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "className"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setClassName(Ljava/lang/String;)V

    .line 127
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "methodName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setMethodName(Ljava/lang/String;)V

    .line 128
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "lineNumber"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setLineNumber(Ljava/lang/Integer;)V

    .line 129
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "fileName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setFileName(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->className:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->fileName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLineNumber(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "lineNumber":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->lineNumber:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "methodName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->methodName:Ljava/lang/String;

    .line 86
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
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "className"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    move-object v2, v1

    const-string/jumbo v3, "methodName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    move-object v2, v1

    const-string/jumbo v3, "lineNumber"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getLineNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    move-object v2, v1

    const-string/jumbo v3, "fileName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    return-void
.end method
