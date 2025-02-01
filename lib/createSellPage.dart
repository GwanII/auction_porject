import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateSellPage extends StatefulWidget {
  @override
  _CreateSellPageState createState() => _CreateSellPageState();
}

class _CreateSellPageState extends State<CreateSellPage> {
  final _formKey = GlobalKey<FormState>();
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();

  String _title = '';
  String _description = '';
  String _minimumPrice = '';

  Future<void> _pickImage() async {
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if (selectedImages != null && selectedImages.length <= 10) {
      setState(() {
        _images.addAll(selectedImages);
        if (_images.length > 10) {
          _images.removeRange(10, _images.length);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상단바', style: TextStyle(fontSize: 35)),
        //
        //
        //
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 이미지 선택 및 표시
                SizedBox(
                  height: 120,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: _images.length + 1,
                    itemBuilder: (context, index) {
                      if (index == _images.length) {
                        return GestureDetector(
                          onTap: _pickImage,
                          child: Container(
                            color: Colors.grey[300],
                            child: Icon(Icons.add_a_photo),
                          ),
                        );
                      };// else {
                      //return Image.file(File(_images[index].path));
                      //};
                       //여기 위에 수정해야함!!!!!!!!
                     },
                  ),
                ),
                SizedBox(height: 16),
                // 게시물 제목
                TextFormField(
                  decoration: InputDecoration(labelText: '게시물 제목'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '제목을 적어주세요';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _title = value ?? '';
                  },
                ),
                SizedBox(height: 16),
                // 게시물 설명
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '설명',
                    alignLabelWithHint: true
                  ),
                  maxLines: 10,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '게시물에 대한 설명을 적어주세요';
                    }
                    if (value.length >500){
                      return '설명은 100자까지 적을 수 있습니다.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _description = value ?? '';
                  },
                ),
                SizedBox(height: 16),
                // 최소 가격
                TextFormField(
                  decoration: InputDecoration(labelText: '최소 가격'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '최소 가격을 적어주세요';
                    }
                    if (double.tryParse(value) == null) {
                      return '숫자를 입력하세요';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _minimumPrice = value ?? '';
                  },
                ),
                SizedBox(height: 20),
                // 등록 버튼
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // 여기서 데이터를 서버로 전송하거나 저장할 수 있습니다.
                      print('Title: $_title');
                      print('Description: $_description');
                      print('Minimum Price: $_minimumPrice');
                    }
                  },
                  child: Text('게시물 생성'),
                ),
              ],
            ),
          )
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFB0E0E6),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                iconSize: 35,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
