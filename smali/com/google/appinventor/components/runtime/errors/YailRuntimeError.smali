.class public Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "SourceFile"


# instance fields
.field private AZ85BVaQs0kLUu2CXyiWDXG9VqpTCCfp4NXnNFkUHgydy0WmV0oqvVulykJ4p0wv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 20
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->AZ85BVaQs0kLUu2CXyiWDXG9VqpTCCfp4NXnNFkUHgydy0WmV0oqvVulykJ4p0wv:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getErrorType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->AZ85BVaQs0kLUu2CXyiWDXG9VqpTCCfp4NXnNFkUHgydy0WmV0oqvVulykJ4p0wv:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
