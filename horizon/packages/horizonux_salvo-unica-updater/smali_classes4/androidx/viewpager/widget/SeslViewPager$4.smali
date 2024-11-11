.class Landroidx/viewpager/widget/SeslViewPager$4;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/SeslViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/viewpager/widget/SeslViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/SeslViewPager;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/viewpager/widget/SeslViewPager;

    .line 1244
    iput-object p1, p0, Landroidx/viewpager/widget/SeslViewPager$4;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/SeslViewPager$4;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1248
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1249
    .local v0, "var6":Landroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    return-object v0

    .line 1252
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/SeslViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 1253
    .local v1, "var3":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1254
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1255
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1256
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1257
    const/4 v2, 0x0

    .line 1259
    .local v2, "var4":I
    iget-object v3, p0, Landroidx/viewpager/widget/SeslViewPager$4;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/SeslViewPager;->getChildCount()I

    move-result v3

    .local v3, "var5":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1260
    iget-object v4, p0, Landroidx/viewpager/widget/SeslViewPager$4;->this$0:Landroidx/viewpager/widget/SeslViewPager;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/SeslViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 1261
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1262
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1263
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 1264
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1267
    .end local v3    # "var5":I
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    return-object v3
.end method
