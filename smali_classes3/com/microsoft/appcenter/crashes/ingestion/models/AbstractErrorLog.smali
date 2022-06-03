.class public abstract Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "AbstractErrorLog.java"


# static fields
.field private static final APP_LAUNCH_TIMESTAMP:Ljava/lang/String; = "appLaunchTimestamp"

.field private static final ARCHITECTURE:Ljava/lang/String; = "architecture"

.field private static final ERROR_THREAD_ID:Ljava/lang/String; = "errorThreadId"

.field private static final ERROR_THREAD_NAME:Ljava/lang/String; = "errorThreadName"

.field private static final FATAL:Ljava/lang/String; = "fatal"

.field private static final PARENT_PROCESS_ID:Ljava/lang/String; = "parentProcessId"

.field private static final PARENT_PROCESS_NAME:Ljava/lang/String; = "parentProcessName"

.field private static final PROCESS_ID:Ljava/lang/String; = "processId"

.field private static final PROCESS_NAME:Ljava/lang/String; = "processName"


# instance fields
.field private appLaunchTimestamp:Ljava/util/Date;

.field private architecture:Ljava/lang/String;

.field private errorThreadId:Ljava/lang/Long;

.field private errorThreadName:Ljava/lang/String;

.field private fatal:Ljava/lang/Boolean;

.field private id:Ljava/util/UUID;

.field private parentProcessId:Ljava/lang/Integer;

.field private parentProcessName:Ljava/lang/String;

.field private processId:Ljava/lang/Integer;

.field private processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 310
    const/4 v3, 0x1

    move v0, v3

    .line 346
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    :goto_0
    return v0

    .line 312
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
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

    .line 313
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 315
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 316
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 318
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;

    move-object v2, v3

    .line 319
    .local v2, "that":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 320
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 319
    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    if-nez v3, :cond_4

    .line 322
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 323
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 322
    :cond_8
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    if-nez v3, :cond_7

    .line 325
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 326
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 325
    :cond_b
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 328
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 329
    :cond_d
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 328
    :cond_e
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    if-nez v3, :cond_d

    .line 331
    :cond_f
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 332
    :cond_10
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 331
    :cond_11
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 334
    :cond_12
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    if-eqz v3, :cond_14

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 335
    :cond_13
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 334
    :cond_14
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    if-nez v3, :cond_13

    .line 337
    :cond_15
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    if-eqz v3, :cond_17

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 338
    :cond_16
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 337
    :cond_17
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 340
    :cond_18
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    if-eqz v3, :cond_1a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 341
    :cond_19
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 340
    :cond_1a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    if-nez v3, :cond_19

    .line 343
    :cond_1b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    if-eqz v3, :cond_1d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 344
    :cond_1c
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 343
    :cond_1d
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    if-nez v3, :cond_1c

    .line 346
    :cond_1e
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    if-eqz v3, :cond_1f

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_1f
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_1

    :cond_20
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAppLaunchTimestamp()Ljava/util/Date;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getErrorThreadId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getErrorThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getFatal()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getParentProcessId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getParentProcessName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getProcessId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v2

    move v1, v2

    .line 352
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 353
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 354
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 355
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 356
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 357
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 358
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v2, v3

    move v1, v2

    .line 359
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v2, v3

    move v1, v2

    .line 360
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v2, v3

    move v1, v2

    .line 361
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v2, v3

    move v1, v2

    .line 362
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    return v0

    .line 352
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 353
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 354
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 355
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 356
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 357
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 358
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 359
    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    .line 360
    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    .line 361
    :cond_9
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    .line 279
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setId(Ljava/util/UUID;)V

    .line 280
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "processId"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setProcessId(Ljava/lang/Integer;)V

    .line 281
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "processName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setProcessName(Ljava/lang/String;)V

    .line 282
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "parentProcessId"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setParentProcessId(Ljava/lang/Integer;)V

    .line 283
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "parentProcessName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setParentProcessName(Ljava/lang/String;)V

    .line 284
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "errorThreadId"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setErrorThreadId(Ljava/lang/Long;)V

    .line 285
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "errorThreadName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setErrorThreadName(Ljava/lang/String;)V

    .line 286
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "fatal"

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setFatal(Ljava/lang/Boolean;)V

    .line 287
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "appLaunchTimestamp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setAppLaunchTimestamp(Ljava/util/Date;)V

    .line 288
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "architecture"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->setArchitecture(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setAppLaunchTimestamp(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "appLaunchTimestamp":Ljava/util/Date;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->appLaunchTimestamp:Ljava/util/Date;

    .line 256
    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "architecture":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->architecture:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setErrorThreadId(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "errorThreadId":Ljava/lang/Long;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadId:Ljava/lang/Long;

    .line 202
    return-void
.end method

.method public setErrorThreadName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "errorThreadName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->errorThreadName:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setFatal(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "fatal":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->fatal:Ljava/lang/Boolean;

    .line 238
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "id":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->id:Ljava/util/UUID;

    .line 110
    return-void
.end method

.method public setParentProcessId(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "parentProcessId":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessId:Ljava/lang/Integer;

    .line 165
    return-void
.end method

.method public setParentProcessName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "parentProcessName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->parentProcessName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setProcessId(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "processId":Ljava/lang/Integer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processId:Ljava/lang/Integer;

    .line 128
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "processName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->processName:Ljava/lang/String;

    .line 146
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
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 294
    move-object v2, v1

    const-string/jumbo v3, "id"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    move-object v2, v1

    const-string/jumbo v3, "processId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getProcessId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    move-object v2, v1

    const-string/jumbo v3, "processName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    move-object v2, v1

    const-string/jumbo v3, "parentProcessId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getParentProcessId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    move-object v2, v1

    const-string/jumbo v3, "parentProcessName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getParentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    move-object v2, v1

    const-string/jumbo v3, "errorThreadId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getErrorThreadId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    move-object v2, v1

    const-string/jumbo v3, "errorThreadName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getErrorThreadName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    move-object v2, v1

    const-string/jumbo v3, "fatal"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getFatal()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    move-object v2, v1

    const-string/jumbo v3, "appLaunchTimestamp"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getAppLaunchTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    move-object v2, v1

    const-string/jumbo v3, "architecture"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    return-void
.end method
