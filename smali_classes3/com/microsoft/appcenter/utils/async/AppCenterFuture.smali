.class public interface abstract Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
.super Ljava/lang/Object;
.source "AppCenterFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isDone()Z
.end method

.method public abstract thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer",
            "<TT;>;)V"
        }
    .end annotation
.end method
