.class Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/ui/widget/SwitchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchBarDelegate"
.end annotation


# instance fields
.field public mSessionName:Ljava/lang/String;

.field public mSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

.field public mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .line 250
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 246
    const-string v0, ""

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    .line 251
    const v0, 0x7f09013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f09013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    .line 253
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 257
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f0131

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0130

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "switchStatus":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v1, "description":Ljava/lang/StringBuilder;
    const-class v2, Lcom/samsung/android/ui/widget/SeslSwitch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ", "

    if-nez v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_2
    instance-of v2, p1, Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    if-eqz v2, :cond_3

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 276
    :cond_3
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    :cond_4
    :goto_1
    return-void
.end method

.method public setSessionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->mSessionName:Ljava/lang/String;

    .line 287
    return-void
.end method
