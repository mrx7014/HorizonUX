.class Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "SeslAppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslAppCompatSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslAppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Lcom/samsung/android/ui/app/SeslAlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAppCompatSpinner;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/SeslAppCompatSpinner;

    .line 640
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 647
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPopup:Lcom/samsung/android/ui/app/SeslAlertDialog;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->dismiss()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPopup:Lcom/samsung/android/ui/app/SeslAlertDialog;

    .line 651
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 717
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 670
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 655
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPopup:Lcom/samsung/android/ui/app/SeslAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 693
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->setSelection(I)V

    .line 694
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 697
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->dismiss()V

    .line 698
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 660
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 661
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 702
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 712
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 732
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 665
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 666
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 707
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 675
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 679
    .local v0, "builder":Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 680
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    .line 682
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->this$0:Landroidx/appcompat/widget/SeslAppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslAppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->create()Lcom/samsung/android/ui/app/SeslAlertDialog;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPopup:Lcom/samsung/android/ui/app/SeslAlertDialog;

    .line 683
    invoke-virtual {v1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 684
    .local v1, "listView":Landroid/widget/ListView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 685
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 686
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 688
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAppCompatSpinner$DialogPopup;->mPopup:Lcom/samsung/android/ui/app/SeslAlertDialog;

    invoke-virtual {v2}, Lcom/samsung/android/ui/app/SeslAlertDialog;->show()V

    .line 689
    return-void
.end method
