.class Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceConnectedEvent"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final iBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
    move-object v1, p1

    .local v1, "componentName":Landroid/content/ComponentName;
    move-object v2, p2

    .local v2, "iBinder":Landroid/os/IBinder;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 581
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;

    .line 582
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;

    .line 583
    return-void
.end method
