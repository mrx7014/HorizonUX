.class public Lcom/samsung/android/ui/tabs/SeslTabItem;
.super Landroid/view/View;
.source "SeslTabItem.java"


# instance fields
.field public final customLayout:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/tabs/SeslTabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->TabItem:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 42
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabItem;->text:Ljava/lang/CharSequence;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ui/tabs/SeslTabItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/tabs/SeslTabItem;->customLayout:I

    .line 45
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 46
    return-void
.end method
