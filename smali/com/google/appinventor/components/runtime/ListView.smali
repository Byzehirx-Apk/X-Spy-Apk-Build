.class public Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text elements. <br> The list can be set using the ElementsFromString property or using the Elements block in the blocks editor. </p>"
    iconName = "images/listView.png"
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

.field private AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

.field private KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

.field private Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

.field private TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

.field private YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

.field private bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

.field private dividerColor:I

.field private eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:I

.field private fontTypeface:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup$LayoutParams;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

.field private final listViewLayout:Landroid/widget/LinearLayout;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

.field private pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

.field private pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

.field private xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 60
    move-object v2, v0

    const/high16 v3, -0x1000000

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:I

    .line 61
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 62
    move-object v2, v0

    const/high16 v3, -0x1000000

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    .line 63
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    .line 64
    move-object v2, v0

    const-string/jumbo v3, "Search list..."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    .line 66
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    .line 70
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    .line 71
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    .line 72
    move-object v2, v0

    const/high16 v3, 0x41400000    # 12.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

    .line 75
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    .line 76
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    .line 80
    move-object v2, v0

    const/high16 v3, 0x41b00000    # 22.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

    .line 81
    move-object v2, v0

    const/16 v3, 0xf

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    .line 83
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    .line 84
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 93
    move-object v2, v0

    new-instance v3, Landroid/widget/ListView;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    .line 94
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 100
    move-object v2, v0

    new-instance v3, Landroid/widget/LinearLayout;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    move-object v2, v0

    new-instance v3, Landroid/widget/EditText;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setWidth(I)V

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListView;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setPadding(Landroid/view/View;Landroid/content/Context;IIII)V

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    new-instance v3, Lcom/google/appinventor/components/runtime/ListView$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/ListView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    if-eqz v2, :cond_0

    .line 137
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 142
    :goto_0
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->DividerColor(I)V

    .line 143
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->DividerHeight(I)V

    .line 145
    move-object v2, v0

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->TextSize(F)V

    .line 146
    move-object v2, v0

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->ItemHeight(I)V

    .line 147
    move-object v2, v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 148
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->SearchTextColor(I)V

    .line 149
    move-object v2, v0

    const v3, -0x333334

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->SearchHintColor(I)V

    .line 150
    move-object v2, v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->SearchTextSize(F)V

    .line 151
    move-object v2, v0

    const v3, -0x9f8275

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 152
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->ShowScrollbar(Z)V

    .line 153
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->ScrollbarFading(Z)V

    .line 154
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->LongClickEnabled(Z)V

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 156
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->ShowSelectionColor(Z)V

    .line 157
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 158
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget v3, v3, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->ScrollingSpeed(F)V

    .line 159
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->HTMLFormat(Z)V

    .line 160
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 161
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListView;->Height(I)V

    .line 163
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 166
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 168
    const-string/jumbo v2, "ListView"

    const-string/jumbo v3, "Listview Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 169
    return-void

    .line 139
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)F
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move v0, v1

    return v0
.end method

.method static synthetic hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)F
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup$LayoutParams;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup$LayoutParams;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    move v0, v1

    return v0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    move v0, v1

    return v0
.end method

.method static synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AfterPicking()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AfterPicking"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 336
    return-void
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF607D8B"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 405
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 406
    return-void
.end method

.method public ClearList()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all the items from the list"
    .end annotation

    .prologue
    .line 653
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    .line 654
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 655
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 657
    :cond_0
    return-void
.end method

.method public DividerColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the divider color."
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    move v0, v1

    return v0
.end method

.method public DividerColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the divider color"
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    .line 374
    return-void
.end method

.method public DividerHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the divider height."
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    move v0, v1

    return v0
.end method

.method public DividerHeight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the divider height."
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    .line 387
    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of text elements to show in the ListView."
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 199
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    move v2, v5

    .line 201
    move-object v5, v0

    move v6, v2

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    .line 203
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 204
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 205
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    move v6, v4

    move-object v7, v3

    aput-object v7, v5, v6

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V

    .line 208
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The ListView elements specified as a string with the items separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 226
    move-object v5, v1

    const-string/jumbo v6, " *, *"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    move-object v1, v5

    .line 227
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 229
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    move v2, v5

    .line 231
    move-object v5, v0

    move v6, v2

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    .line 232
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 233
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 234
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    move v6, v4

    move-object v7, v3

    aput-object v7, v5, v6

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V

    .line 238
    :cond_1
    return-void
.end method

.method public FilterBarHint()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public FilterBarHint(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Search list..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The hint that will be displayed in the filter bar."
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    .line 419
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHint(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 561
    return-void
.end method

.method public FontBold()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move v0, v1

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 573
    return-void
.end method

.method public FontItalic()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    move v0, v1

    return v0
.end method

.method public FontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    move v0, v1

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    .line 585
    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public HTMLFormat(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then the listview will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    .line 252
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 253
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V

    .line 255
    :cond_0
    return-void
.end method

.method public HTMLFormat()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if html is enabled."
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    move v0, v1

    return v0
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 181
    const/4 v2, -0x2

    move v1, v2

    .line 183
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 184
    return-void
.end method

.method public ItemHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the listview item height."
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    move v0, v1

    return v0
.end method

.method public ItemHeight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the listview item height. If you write 10, that means the item height will be 10 percent of the device screen height."
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    .line 482
    return-void
.end method

.method public LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list via long click. The selected element is available in the Selection property."
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 342
    return-void
.end method

.method public LongClickEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true long click on items are enabled, else long click is disabled."
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 325
    return-void
.end method

.method public LongClickEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the state of \'Long Click Enabled\'."
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isLongClickable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ScrollToPosition(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Smoothly scroll to the specified position. The listview will scroll such that the indicated position is displayed."
    .end annotation

    .prologue
    .line 635
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 636
    return-void
.end method

.method public ScrollbarFading(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true you will see always the scrollbar on the listview."
    .end annotation

    .prologue
    .line 629
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 630
    return-void
.end method

.method public ScrollbarFading()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of ScrollbarFading. If ScrollbarFading is enabled returns true."
    .end annotation

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isScrollbarFadingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ScrollingSpeed()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the scrolling speed."
    .end annotation

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    move v0, v1

    return v0
.end method

.method public ScrollingSpeed(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The amount of friction applied to flings."
    .end annotation

    .prologue
    .line 642
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    .line 643
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    move v4, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFriction(F)V

    .line 644
    return-void
.end method

.method public SearchHintColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the color of the search hint text."
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    move v0, v1

    return v0
.end method

.method public SearchHintColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the search hint text."
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    .line 544
    return-void
.end method

.method public SearchTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the color of the search text."
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    move v0, v1

    return v0
.end method

.method public SearchTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the search text."
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    .line 519
    return-void
.end method

.method public SearchTextSize()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the search text."
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public SearchTextSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the search text."
    .end annotation

    .prologue
    .line 530
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

    .line 531
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the selection to the ListView."
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    .line 505
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    .line 506
    return-void
.end method

.method public SelectionColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the selection color."
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

    move v0, v1

    return v0
.end method

.method public SelectionColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

    .line 460
    return-void
.end method

.method public SelectionIndex()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    move v0, v1

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    .line 497
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListView;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    .line 427
    move v2, v1

    if-eqz v2, :cond_0

    .line 428
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 432
    goto :goto_0
.end method

.method public ShowFilterBar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    move v0, v1

    return v0
.end method

.method public ShowScrollbar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true you will see a scrollbar when you scrolling the listview."
    .end annotation

    .prologue
    .line 617
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 618
    return-void
.end method

.method public ShowScrollbar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of ShowScrollbar. If ShowScrollbar is enabled returns true."
    .end annotation

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ShowSelectionColor(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowSelectionColor. True will show the selection color on a selected item, False will hide it."
        userVisible = false
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ListView;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    .line 447
    return-void
.end method

.method public ShowSelectionColor()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowSelectionColor for visibility."
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ListView;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    move v0, v1

    return v0
.end method

.method public TextAlignment()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 597
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    move v0, v1

    return v0
.end method

.method public TextAlignment(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    .line 605
    return-void
.end method

.method public TextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text color of the listview items."
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ListView;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:I

    move v0, v1

    return v0
.end method

.method public TextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text color of the listview items."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:I

    .line 361
    return-void
.end method

.method public TextSize()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the listview items."
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public TextSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the listview items."
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

    .line 349
    return-void
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 191
    const/4 v2, -0x2

    move v1, v2

    .line 193
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 194
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public listUpdate()V
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/ListView$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    .line 291
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 292
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/ListView;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 293
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    return-void
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
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/ListView;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    if-eqz v6, :cond_0

    .line 299
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/ListView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_0
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/google/appinventor/components/runtime/ListView;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    .line 302
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/ListView;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    .line 303
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 304
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/ListView;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Z

    if-eqz v6, :cond_0

    .line 309
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/ListView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :cond_0
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/google/appinventor/components/runtime/ListView;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:I

    .line 312
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/ListView;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    .line 313
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->isLongClickable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ListView;->LongClick()V

    .line 316
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->isLongClickable()Z

    move-result v6

    move v0, v6

    return v0
.end method
