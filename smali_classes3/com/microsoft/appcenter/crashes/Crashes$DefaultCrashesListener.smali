.class Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;
.super Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;
.source "Crashes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/crashes/Crashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultCrashesListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/AbstractCrashesListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$1;)V
    .locals 3

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;
    move-object v1, p1

    .local v1, "x0":Lcom/microsoft/appcenter/crashes/Crashes$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;-><init>()V

    return-void
.end method
