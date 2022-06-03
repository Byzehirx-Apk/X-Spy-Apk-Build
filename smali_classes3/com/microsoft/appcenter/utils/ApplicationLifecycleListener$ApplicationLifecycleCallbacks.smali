.class public interface abstract Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ApplicationLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationLifecycleCallbacks"
.end annotation


# virtual methods
.method public abstract onApplicationEnterBackground()V
.end method

.method public abstract onApplicationEnterForeground()V
.end method
