.class public Lcom/google/appinventor/components/runtime/ListPickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListPickerActivity$a;
    }
.end annotation


# static fields
.field static Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

.field private static backgroundColor:I

.field private static fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

.field private static titleBarColor:I


# instance fields
.field private Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

.field hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 36
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v4, Landroid/widget/LinearLayout;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 55
    move-object v1, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 58
    move-object v2, v5

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    move-object v4, v0

    move-object v5, v2

    sget-object v6, Lcom/google/appinventor/components/runtime/ListPicker;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    .line 61
    :cond_0
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Ljava/lang/String;

    const v6, -0xfc560d

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->titleBarColor:I

    .line 63
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->titleBarColor:I

    if-eqz v7, :cond_9

    sget v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->titleBarColor:I

    :goto_0
    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Ljava/lang/String;

    const v6, -0xde690e

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

    .line 67
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 68
    move-object v4, v0

    sget v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 71
    :cond_2
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 73
    move-object v3, v5

    const-string/jumbo v5, "portrait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 74
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    .line 80
    :cond_3
    :goto_1
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 82
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_4
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 86
    if-eqz v4, :cond_b

    .line 87
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 92
    :cond_5
    :goto_2
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 94
    if-eqz v4, :cond_c

    .line 95
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 96
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 102
    :cond_6
    :goto_3
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 103
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 104
    move-object v4, v0

    new-instance v5, Landroid/widget/ListView;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    .line 105
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 108
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    .line 109
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Ljava/lang/String;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    .line 111
    move-object v4, v1

    sget v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 114
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/ListPickerActivity$a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    .line 115
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    move-object v4, v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 119
    move-object v4, v0

    new-instance v5, Landroid/widget/EditText;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    .line 120
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 121
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 122
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 123
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const-string/jumbo v5, "Search list..."

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 125
    move-object v4, v2

    if-eqz v4, :cond_7

    move-object v4, v2

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 126
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 130
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    new-instance v5, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;-><init>(Lcom/google/appinventor/components/runtime/ListPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    .line 155
    :goto_4
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setContentView(Landroid/view/View;)V

    .line 159
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 162
    move-object v4, v0

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v4

    .line 164
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 165
    return-void

    .line 63
    :cond_9
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 76
    :cond_a
    move-object v4, v3

    const-string/jumbo v5, "landscape"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 89
    :cond_b
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto/16 :goto_2

    .line 98
    :cond_c
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 99
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_3

    .line 151
    :cond_d
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(I)V

    .line 152
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 153
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 170
    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 171
    move-object v2, v7

    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 172
    move-object v6, v2

    sget-object v7, Lcom/google/appinventor/components/runtime/ListPicker;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Ljava/lang/String;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 173
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    .line 174
    move-object v6, v0

    const/4 v7, -0x1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 176
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 184
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v1, v3

    .line 185
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListPickerActivity;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 186
    move v3, v1

    move v0, v3

    .line 188
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method
