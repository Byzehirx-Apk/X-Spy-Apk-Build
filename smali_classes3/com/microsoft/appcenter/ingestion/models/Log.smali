.class public interface abstract Lcom/microsoft/appcenter/ingestion/models/Log;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# virtual methods
.method public abstract addTransmissionTarget(Ljava/lang/String;)V
.end method

.method public abstract getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;
.end method

.method public abstract getDistributionGroupId()Ljava/lang/String;
.end method

.method public abstract getSid()Ljava/util/UUID;
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getTimestamp()Ljava/util/Date;
.end method

.method public abstract getTransmissionTargetTokens()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
.end method

.method public abstract setDistributionGroupId(Ljava/lang/String;)V
.end method

.method public abstract setSid(Ljava/util/UUID;)V
.end method

.method public abstract setTag(Ljava/lang/Object;)V
.end method

.method public abstract setTimestamp(Ljava/util/Date;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method
