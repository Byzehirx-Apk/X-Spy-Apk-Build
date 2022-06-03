.class abstract Lorg/slf4j/helpers/NamedLoggerBase;
.super Ljava/lang/Object;
.source "NamedLoggerBase.java"

# interfaces
.implements Lorg/slf4j/Logger;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x68929dc81c4e557dL


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NamedLoggerBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NamedLoggerBase;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/NamedLoggerBase;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/NamedLoggerBase;
    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NamedLoggerBase;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/NamedLoggerBase;
    return-object v0
.end method
