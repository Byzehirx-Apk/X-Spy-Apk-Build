.class final Lcom/google/appinventor/components/runtime/TimePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TimePicker;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 9

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/TimePicker;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;I)I

    move-result v4

    .line 157
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    move v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/TimePicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/TimePicker;I)I

    move-result v4

    .line 158
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/TimePicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/TimePicker;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 163
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TimePicker$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/TimePicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TimePicker;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/TimePicker$1$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/TimePicker$1$1;-><init>(Lcom/google/appinventor/components/runtime/TimePicker$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 169
    :cond_0
    return-void
.end method
