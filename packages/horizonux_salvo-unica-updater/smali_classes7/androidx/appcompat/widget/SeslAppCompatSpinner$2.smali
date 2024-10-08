.class Landroidx/appcompat/widget/SeslAppCompatSpinner$2;
.super Ljava/lang/Object;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/SeslAppCompatSpinner;

    .line 457
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 460
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->showPopup()V

    .line 463
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 464
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 465
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 466
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 471
    :cond_2
    :goto_0
    return-void
.end method
